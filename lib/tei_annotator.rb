class TeiAnnotator


  def initialize(transporter)
    @text_transporter = transporter
  end
  
  
  
  def search_and_replace(doc, paragraph, verbatim, entity)
    entity_children = []    
    paragraph.children.each do |node|
      md = /(.*)#{verbatim}(.*)/.match node.text
      if md
        # this node contains the verbatim string
        prefix = md[1]
        suffix = md[2]

        entity_node = Nokogiri::XML::Node.new(tei_element(entity), doc)
        entity_node['ref'] = entity.ref_id if entity.ref_id 
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
    Entity::Type::ORGANIZATION => 'orgName'
  }

  def tei_element(entity)
    TEI_TAGS[entity.entity_type] || 'entity'    
  end
  
  
end