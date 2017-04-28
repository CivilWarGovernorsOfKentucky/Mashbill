class Document < ActiveRecord::Base
  has_many :annotations
  has_many :entities, through: :annotations
  has_many :relationships
  
  def applicable_annotations
    annotations.where.not(:entity_id => nil)
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
