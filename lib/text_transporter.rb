class TextTransporter
  
  def fetch(document_id)
    IO.read(document_path(document_id))
  end 
  
  def save(document_id, text)
    File.write(document_path(document_id), text)
  end


  def document_path(document_id)
    File.join(TextTransporter.document_root, 'document_xml', document_id+".xml")
  end

  def self.document_root
    Rails.application.config.document_root ||  File.join(Rails.root, '..', 'TestDocuments')
  end

  def self.enabled?
    document_root && Dir.exists?(document_root)
  end
  
end