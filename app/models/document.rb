class Document < ActiveRecord::Base
  has_many :annotations
  
  def applicable_annotations
    annotations
  end
  
  # TODO: is this still applicable?
	def self.document_from_cwgk_id
		#create document
		#copy cwgk_id into document.cwgk_id
		#read xml file from filesystem
		#get title from xml
		#copy title into document
		#save the document
	end

end
