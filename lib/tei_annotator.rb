class TeiAnnotator


  def initialize(transporter)
    @text_transporter = transporter
  end

  def apply_annotations(document, user)
    # grab the text of the doc
    # create a DOM from the text
    doc = load_document(document)
    # loop through the annotations for the doc
    document.applicable_annotations.each do |annotation|
      apply_annotation(doc, annotation)
    end
    update_responsibility(document, doc)
    # store the modified doc 
    save_document(document, doc, user)
  end  

  
  ANNOTATED_TEXT = "Annotated by"
  FACT_CHECKED_TEXT = "Fact checked by"
  def update_responsibility(document, doc)
    fact_check = document.deeds.where(:deed_type => Deed::REVIEWED).last
    annotated = document.deeds.where(:deed_type => Deed::NEEDS_REVIEW).last
    
    respStmts = doc.search("titleStmt/respStmt")
    
    if annotated && !respStmts.text.match(ANNOTATED_TEXT)
      respStmts.last.add_next_sibling(Nokogiri::XML::Text.new("\n", doc))
      respStmts.last.add_next_sibling(create_resp_stmt(annotated, ANNOTATED_TEXT, doc))
    end
    
    if fact_check && !respStmts.text.match(FACT_CHECKED_TEXT)
      respStmts.last.add_next_sibling(Nokogiri::XML::Text.new("\n", doc))
      respStmts.last.add_next_sibling(create_resp_stmt(fact_check, FACT_CHECKED_TEXT, doc))
    end
  end

  def create_resp_stmt(deed, text, doc)
    respStmt = Nokogiri::XML::Node.new("respStmt", doc)
    respStmt.add_child(Nokogiri::XML::Text.new("\n", doc))
    resp = Nokogiri::XML::Node.new("resp", doc)
    resp['n'] = deed.deed_type
    resp.add_child(Nokogiri::XML::Text.new(text, doc))
    name = Nokogiri::XML::Node.new("name", doc)
    name.add_child(Nokogiri::XML::Text.new(deed.user.name, doc))
    
    respStmt.add_child(resp)
    respStmt.add_child(Nokogiri::XML::Text.new("\n", doc))
    respStmt.add_child(name)
    respStmt.add_child(Nokogiri::XML::Text.new("\n", doc))

    respStmt
  end

  def load_document(document)
    text = @text_transporter.fetch(document.cwgk_id)
    Nokogiri::XML(text)
  end
  
  def save_document(document, doc, user)
    text = doc.to_xml
    @text_transporter.save(document.cwgk_id, text, user)
  end

  def annotate_element(doc, element, annotation)
    before_xml = element.to_xml

    already_tagged = search_and_replace(doc, element, annotation.verbatim, annotation.entity)

    # return true if the XML was modified
    already_tagged || element.to_xml != before_xml
  end


  def apply_annotation(doc, annotation)
    old_doc = doc.dup
    # attempt based on selector
    if annotation.ceteicean?
      element = ceteicean_element(doc, annotation)
      if element && element_contains_context?(element, annotation) && annotate_element(doc,element,annotation)
        p 'hooray!'
      else
        log_error("Could not find element at ceTEIcean selector", annotation)
      end
    else
      element = target_element(doc, annotation)
      if element && element_contains_context?(element, annotation) && annotate_element(doc,element,annotation)
        # the element was modified!
      else
        log_error("Could not find element at selector; attempting fallback", annotation)
        element = fallback_element(doc, annotation)

        if element && element_contains_context?(element, annotation) && annotate_element(doc,element,annotation)
          # the element was modified!
        else
          log_error("Cound not find fallback element in document", annotation)
          element = last_fallback_element(doc, annotation)
          if element && element_contains_context?(element, annotation) && annotate_element(doc,element,annotation)
            # the element was modified!
          else
            log_error("Cound not find last fallback element in document", annotation)
            return
          end
        end
      end
    end

    if old_doc.text.gsub(/\s/,"") != doc.text.gsub(/\s/,"")
      log_error("Annotation corrupts TEI document", annotation)
      doc = old_doc        
    end
  end

  def element_contains_context?(element, annotation)
    segments = (element.text+' ').split(/#{Regexp.escape(annotation.verbatim)}/)
    if segments.count == 1 
      return false # this element doesn't have the verbatim text
    else
      end_index = segments.count - 1
      good_so_far = false

      0.upto(end_index-1) do |start_index|

        last_segment = (start_index+1 == end_index)
        segment_text = segments[start_index..end_index].join(annotation.verbatim)

        md = /(.*?)#{Regexp.escape(annotation.verbatim)}(.*)/m.match segment_text
        if md
          # this element contains the annotation's target text      

          # but does it contain the correct context?
          element_prefix = md[1].gsub(/\W/m, '').gsub(/\s+/m, '').downcase
          element_suffix = md[2].gsub(/\W/m, '').gsub(/\s+/m, '').downcase

          # the verbatim could have started the element
          if !element_prefix.blank? && annotation.prefix
            annotation_prefix = annotation.prefix.gsub(/\W/m, '').gsub(/\s+/m, '').downcase
            # annotation prefixes span multiple elements, so the most likely case is
            # that of an annotation prefix that contains the element prefix only
            if element_prefix.length < annotation_prefix.length
              if !annotation_prefix.match(/#{Regexp.escape(element_prefix)}$/m)
                # the element prefix was not at the end of the annotation prefix
                good_so_far = false
                return false if last_segment
              else
                good_so_far = true
              end
            else
              # the annotation prefix was shorter than the element prefix -- this must 
              # be a long paragraph!
              if !element_prefix.match(/#{Regexp.escape(annotation_prefix)}$/m)
                # the element prefix does not end with the annotation prefix
                good_so_far = false
                return false if last_segment
              else
                good_so_far = true
              end
            end
          end

          # the verbatim could have ended the element
          if !element_suffix.blank? && annotation.suffix
            annotation_suffix = annotation.suffix.gsub(/\W/m, '').gsub(/\s+/m, '').downcase
            if element_suffix.length < annotation_suffix.length
              if !annotation_suffix.match(/^#{Regexp.escape(element_suffix)}/m)
                good_so_far = false
                return false if last_segment
              else
                good_so_far = true if good_so_far
              end
            else
              if !element_suffix.match(/^#{Regexp.escape(annotation_suffix)}/m)
                # the element prefix does not end with the annotation prefix
                good_so_far = false
                return false if last_segment
              else
                good_so_far = true if good_so_far
              end
            end
          end

          # we got to this point without short circuiting, but is this a good element?
          if good_so_far
            return true
          end

        end
        # loop to the next segment
      end
    end

    # the element contains as much of the context as possible to verify
    return true
  end


  ERRORFILE = File.join(Rails.root, "tmp/mashbill_tei_errors.csv")
  def log_error(problem, annotation)
    msg = "#{problem}\t#{Time.now.to_s}\t#{annotation.start_container}\t#{annotation.verbatim}\t#{annotation.document.cwgk_id}\thttps://hyp.is/#{annotation.hypothesis_annotation_id}\n"
    File.open(ERRORFILE, "a") do |f|
      f << msg
    end    
  end


  def copy_empty_node(node,doc)
    copy = node.dup

    copy.children.each do |child|
      child.remove
    end
    copy
  end

  def is_bad_tag(token)
    token.count('<') != token.count('>')
  end

  def clean_split_string(tokens, text)
    cleaned_tokens = []

    working_token = nil
    tokens.each do |token|
      if is_bad_tag(token)
        if working_token
          cleaned_tokens << working_token + text + token
          working_token = nil
        else
          working_token = token
        end
      else
        cleaned_tokens << token
      end
    end

    cleaned_tokens
  end



  def split_node(node, text, doc)
    if node.text?
      md = node.text.match(/(.*?)#{Regexp.escape(text)}(.*)/m)
      left_string = md[1]
      right_string = md[2]
      left_node =  Nokogiri::XML::Text.new(left_string + text, doc)
      right_node =  Nokogiri::XML::Text.new(right_string, doc)
    else
      left_node = copy_empty_node(node,doc)
      right_node = copy_empty_node(node,doc)
      inner_xml = node.inner_html # ?? 
      left_string, right_string = clean_split_string(inner_xml.split(/#{Regexp.escape(text)}/m),text)
      left_string = "" unless left_string
      right_string = "" unless right_string
      left_node.inner_html = left_string + text
      right_node.inner_html = right_string
    end

    [left_node, right_node]
  end

  def new_node(node, text, doc)
    if node.text?
      dup_node = Nokogiri::XML::Text.new(text, doc)
    else
      dup_node = node
      # Nokogiri::XML::Node.new(node.name, doc)
      # # how do we add a non-text node?
      # node.children.each do |child_node|
      #   dup_node.add_child(child_node)
      # end
    end

    dup_node
  end

  
  
  def search_and_replace(doc, paragraph, verbatim, entity)
    # only search-replace if there isn't already an entity tag containing the verbatim text
    if TEI_TAGS.values.push('entity').detect {|name| paragraph.search(name).detect { |match| match.text == verbatim } || (paragraph.name == name && paragraph.text == verbatim) }
      return true
    else
      # do this the long way
      md = /(.*?)#{Regexp.escape(verbatim)}(.*)/m.match paragraph.text
      if md
        prefix = md[1]
        suffix = md[2]
        # create a replacement element
        replacement = Nokogiri::XML::Node.new(paragraph.name, doc)

        state = :prefix

        entity_node = Nokogiri::XML::Node.new(tei_element(entity), doc)
        entity_node['ref'] = entity.xml_id if entity.ref_id 


        paragraph.children.each do |node|
          if state == :prefix
            if prefix == node.text
              # the prefix is the node
              next_node = node.next_sibling
              replacement.add_child(node)
              prefix = ""
              # in occasional cases, the text node is followed by a non-text
              # node, which needs to be added to the replacement container before
              # an element node is added
              if next_node && !next_node.text.blank?
                state = :element
              end
            elsif prefix.match /^#{Regexp.escape(node.text)}/m
            # the prefix contains the entire node
              # add the node to the replacement element
              replacement.add_child(node)
              # adjust the prefix
              prefix.sub!(/^#{Regexp.escape(node.text)}/m, '')
              # we remain in the prefix state
            elsif node.text.match /^#{Regexp.escape(prefix)}/m

              # this node must be split into the prefix and the remainder
              md = /(#{Regexp.escape(prefix)})(.*)/m.match node.text
              node_prefix = md[1]
              node_remainder = md[2]

              unless node_prefix.empty?
                lhs, rhs = split_node(node, node_prefix, doc)
                replacement.add_child(lhs)
                node = rhs
              end

              # if node.text?
              #   node.content=node.text.sub(node_prefix,'')
              # end

              # does the node contain all of the verbatim, or just a portion? 
              md = /#{verbatim}(.*)/m.match node_remainder
              if md
                # the node contains all the verbatim
                # add to the entity tag
                replacement.add_child(entity_node)
 
                lhs, rhs = split_node(node, verbatim, doc)
 
                entity_node.add_child(lhs)

                # does the node contain the verbatim and the suffix as well
                state = :suffix
                node_suffix = md[1]
                if !node_suffix.empty?
                  # there is a suffix in the remainder
                  replacement.add_child(rhs)

                  # modify the suffix
                  suffix.sub!(/^#{Regexp.escape(node_suffix)}/m, '')
                end
              else
                # the node only contains the first part of the verbatim
                # add the entity tag
                replacement.add_child(entity_node)
                # add the node remainder to the entity tag
                remainder_node = new_node(node, node_remainder, doc)
                entity_node.add_child(remainder_node)
                # change the state to consume the entity
                verbatim.sub!(/^#{Regexp.escape(node_remainder)}/m, '')

                state = :element
              end
            else
              print "UNEXPECTED STATE!"
            end
          elsif state == :element
            # does the node contain all of the verbatim, or just a portion? 
            md = /#{Regexp.escape(verbatim)}(.*)/m.match node.text
            if md
              # the node contains all the verbatim
              lhs, rhs = split_node(node, verbatim, doc)
              # dup_node = new_node(node, verbatim, doc)

              # add the entity tag
              entity_node.add_child(lhs)
              replacement.add_child(entity_node) unless entity_node.parent

              state = :suffix
              verbatim = nil
              # does the node contain the verbatim and the suffix as well
              node_suffix = md[1]
              if !node_suffix.empty?
                replacement.add_child(rhs)

                # modify the suffix
                suffix.sub!(/^#{Regexp.escape(node_suffix)}/m, '')
              end
            elsif
              # the node only contains the first part of the verbatim
              # add the entity tag
              # add the node remainder to the entity tag
              dup_node = new_node(node, node.text, doc)
              entity_node.add_child(dup_node)
              replacement.add_child(entity_node) unless entity_node.parent
              verbatim.sub!(/^#{Regexp.escape(node.text)}/m, '')
            end

          else # state == :suffix
            # just add this node to the end and keep going
            replacement.add_child(node)
          end

        end
        paragraph.replace(replacement)

      end
      return false
    end
  end
  

  TEI_TAGS = {
    Entity::Type::PERSON => 'persName',
    Entity::Type::PLACE => 'placeName',
    Entity::Type::ORGANIZATION => 'orgName',
    Entity::Type::GEO_FEATURE => 'geogName'
  }

  def tei_element(entity)
    TEI_TAGS[entity.entity_type] || 'entity'    
  end

  def last_fallback_element(doc, annotation)
    clean_text = annotation.verbatim.strip
    clean_text.gsub!("'","&apos;")
    doc.search("//*[contains(., '#{clean_text}')]").sort{|a,b| b.path.length <=> a.path.length}.detect do |element|
      # Nokogiri's search returns parent nodes as well as leaf nodes, so we do not want to 
      # return top-level elements TEI, text, or body.  We also don't want any node that is
      # a part of the teiHeader
      (!element.ancestors.detect { |ancestor| ancestor.name == 'teiHeader' } &&
      (!['TEI','text','body'].include?(element.name)) && 
      element_contains_context?(element, annotation))
    end
  end
  
  def fallback_element(doc, annotation)
    clean_text = annotation.verbatim.strip
    clean_text.gsub!("'","&apos;")
    doc.search("//body//*[text()[contains(., '#{clean_text}')]]").first
  end
  
  def target_element(doc, annotation)
    element_type,index = target_element_and_index(annotation.start_container) # selectors start with 1    
    doc.search("text/body/#{element_type}")[index]
  end


  def ceteicean_to_path(selector)
    selector.sub(/.*tei-tei\[.\]\/tei-text\[.\]\/tei-body\[.\]/, 'TEI/text/body').gsub('tei-','')
  end

  def ceteicean_element(doc, annotation)
    doc.search(ceteicean_to_path(annotation.start_container)).first
  end
  
  def target_element_and_index(locator)
    md = /.*text...\/(\w*)\[(\d+)\].*/.match(locator)
    if md.nil? 
      return ['use_fallback',0]
    end
    element = md.captures.first
    index = md.captures.second.to_i - 1
    [element, index]
  end
  
  
end