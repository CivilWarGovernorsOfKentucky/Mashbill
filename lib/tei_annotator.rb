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
        
        entity = Nokogiri::XML::Node.new("entity", doc)
        entity.add_child(Nokogiri::XML::Text.new(verbatim, doc))
        
        prefix_node = Nokogiri::XML::Text.new(prefix, doc)
        node.replace(prefix_node)
        prefix_node.add_next_sibling(entity)
        suffix_node = Nokogiri::XML::Text.new(suffix, doc)
        entity.add_next_sibling(suffix_node)
      end
    end
  end
  
  
  
end