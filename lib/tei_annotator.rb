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

  def apply_annotation(doc, annotation)
    element = target_element(doc, annotation)
    unless element
      log_error("Could not find element at selector; attempting fallback", annotation)
      element = fallback_element(doc, annotation)
      unless element
        log_error("Cound not find fallback element in document", annotation)
        element = last_fallback_element(doc, annotation)
        unless element
          log_error("Cound not find last fallback element in document", annotation)
          return
        end
      end
    end

    old_doc = doc.dup
    search_and_replace(doc, element, annotation.verbatim, annotation.entity)
    if old_doc.text.gsub(/\s/,"") != doc.text.gsub(/\s/,"")
      log_error("Annotation corrupts TEI document", annotation)
      doc = old_doc        
    end
  end

  ERRORFILE = File.join(Rails.root, "tmp/mashbill_tei_errors.csv")
  def log_error(problem, annotation)
    msg = "#{problem}\t#{Time.now.to_s}\t#{annotation.start_container}\t#{annotation.verbatim}\t#{annotation.document.cwgk_id}\thttps://hyp.is/#{annotation.hypothesis_annotation_id}\n"
    File.open(ERRORFILE, "a") do |f|
      f << msg
    end    
  end

  def modify_text(node, text, doc, remove)
    if node.text?
      if remove
        node.content = node.text.sub(text, '')
      else
        node.content = text
      end
    else
      node.children.each do |child|
        modify_text(child, text, doc, remove)
      end
    end
  end


  def split_node(node, text, doc)
    copy_1 = node.dup
    copy_2 = node.dup

    # modify copy 1 to have the text
    modify_text(copy_1, text, doc, false)

    # modify copy 2 to have the remainder
    modify_text(copy_2, text, doc, true)
    [copy_1, copy_2]
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
    unless TEI_TAGS.values.push('entity').detect {|name| paragraph.search(name).text == verbatim }
      # do this the long way
      md = /(.*)#{verbatim}(.*)/.match paragraph.text
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
              replacement.add_child(node)
              prefix = nil
              state = :element
            elsif prefix.match /^#{node.text}/
              # the prefix contains the entire node
              # add the node to the replacement element
              replacement.add_child(node)
              # adjust the prefix
              prefix.sub!(/^#{node.text}/, '')
              # we remain in the prefix state
            elsif node.text.match /^#{prefix}/
              # this node must be split into the prefix and the remainder
              md = /(#{prefix})(.*)/.match node.text
              node_prefix = md[1]
              node_remainder = md[2]
              prefix_node = new_node(node, node_prefix, doc)

              replacement.add_child(prefix_node)
              if node.text?
                node.content=node.text.sub(node_prefix,'')
              end

              # does the node contain all of the verbatim, or just a portion? 
              md = /#{verbatim}(.*)/.match node_remainder
              if md
                # the node contains all the verbatim
                # add to the entity tag
                replacement.add_child(entity_node)
 
                lhs, rhs = split_node(node, verbatim, doc)
 
                entity_node.add_child(lhs)

                # does the node contain the verbatim and the suffix as well
                node_suffix = md[1]
                if !node_suffix.blank?
                  # there is a suffix in the remainder
                  replacement.add_child(rhs)

                  state = :suffix
                  # modify the suffix
                  suffix.sub!(/^#{node_suffix}/, '')
                end
              else
                # the node only contains the first part of the verbatim
                # add the entity tag
                replacement.add_child(entity_node)
                # add the node remainder to the entity tag
                remainder_node = new_node(node, node_remainder, doc)
                entity_node.add_child(remainder_node)
                # change the state to consume the entity
                verbatim.sub!(/^#{node_remainder}/, '')

                state = :element
              end
            end
          elsif state == :element
            # does the node contain all of the verbatim, or just a portion? 
            md = /#{verbatim}(.*)/.match node.text
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
              if !node_suffix.blank?
                replacement.add_child(rhs)

                # modify the suffix
                suffix.sub!(/^#{node_suffix}/, '')
              end
            elsif
              # the node only contains the first part of the verbatim
              # add the entity tag
              # add the node remainder to the entity tag
              dup_node = new_node(node, node.text, doc)
              entity_node.add_child(dup_node)
              replacement.add_child(entity_node) unless entity_node.parent
              verbatim.sub!(/^#{node.text}/, '')
            end

          else # state == :suffix
            # just add this node to the end and keep going
            replacement.add_child(node)
          end

        end
        paragraph.replace(replacement)

      end

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
    doc.search("//*[contains(., '#{clean_text}')]").last
  end
  
  def fallback_element(doc, annotation)
    clean_text = annotation.verbatim.strip
    doc.search("//*[text()[contains(., '#{clean_text}')]]").first
  end
  
  def target_element(doc, annotation)
    element_type,index = target_element_and_index(annotation.start_container) # selectors start with 1    
    doc.search("text/body/#{element_type}")[index]
  end
  
  def target_element_and_index(locator)
    md = /.*text...\/(\w*)\[(\d+)\].*/.match(locator)
    element = md.captures.first
    index = md.captures.second.to_i - 1
    [element, index]
  end
  
  
end