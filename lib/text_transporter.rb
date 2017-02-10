class TextTransporter
  
  def fetch(document_id)
    IO.read(document_path(document_id))
  end 
  
  def save(document_id, text)
    File.write(document_path(document_id), text)
  end


  def document_path(document_id)
    File.join(document_root, 'document_xml', document_id+".xml")
  end

  def document_root
    Rails.application.config.document_root ||  File.join(Rails.root, '..', 'TestDocuments')
  end
  
end