require 'git_talker'
class TextTransporter
  
  def fetch(document_id)
    GitTalker.new.refresh_repository(Rails.application.config.document_root)
    IO.read(document_path(document_id))
  end 
  
  def save(document_id, text, user)
    File.write(document_path(document_id), text)
    GitTalker.new.commit_and_push_file(document_path(document_id), user)
  end


  def document_path(document_id)
    File.join(TextTransporter.document_root, 'xml', document_id+".xml")
  end

  def self.document_root
    Rails.application.config.document_root ||  File.join(Rails.root, '..', 'TestDocuments')
  end

  def self.enabled?
    document_root && Dir.exists?(document_root)
  end
  
  def bio_path(ref_id)
    File.join(TextTransporter.document_root, 'xml', ref_id+".xml")    
  end
  
  def save_entity(ref_id, text, user)
    File.write(bio_path(ref_id), text)
    GitTalker.new.commit_and_push_file(bio_path(ref_id), user)   
  end

  def entity_file_exists?(ref_id)
    File.exists?(bio_path(ref_id))
  end
  
end