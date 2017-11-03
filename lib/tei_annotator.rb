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
    # store the modified doc 
    save_document(document, doc, user)
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
      log_error("Could not find element at selector", annotation)
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
  
  
  def search_and_replace(doc, paragraph, verbatim, entity)
    entity_children = []    
    paragraph.children.each do |node|
#      binding.pry if  verbatim=="Clarke County"
      md = /(.*)#{verbatim}(.*)/.match node.text
      if md && !TEI_TAGS.values.push('entity').include?(node.name)
        # this node contains the verbatim string but has not already been marked up as an entity
        prefix = md[1]
        suffix = md[2]

        entity_node = Nokogiri::XML::Node.new(tei_element(entity), doc)
        entity_node['ref'] = entity.xml_id if entity.ref_id 
        entity_node.add_child(Nokogiri::XML::Text.new(verbatim, doc))
        
        prefix_node = Nokogiri::XML::Text.new(prefix, doc)
        node.replace(prefix_node)
        prefix_node.add_next_sibling(entity_node)
        suffix_node = Nokogiri::XML::Text.new(suffix, doc)
        entity_node.add_next_sibling(suffix_node)
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