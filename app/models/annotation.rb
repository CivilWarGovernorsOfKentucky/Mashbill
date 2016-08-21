class Annotation < ActiveRecord::Base
  belongs_to :document
  belongs_to :user
  belongs_to :entity

  def self.ingest_new_annotations
  	#  hit the hypothesis API for all group annotations ordered by most recent first
  	#  for each annotation
  	# turn json into a ruby hash
  	#  check date -- is it before or after most recently created annotation in our system
  	#  if more recent
  	#  create a blank annotation
  	# set its hypothesis_annotation_id
  	# set hypothesis_user
  	# set hypothesis_date
  	# set user_id to current user
  	# set verbatim
  	# set document_id to find or create the document from hash
  	#  else done
  end

  def self.find_or_create_document
  	# kentucky_doc_id = parse kentucky document id from hypothesis target url
  	# search documents where cwgk_id = kentucky_doc_id
  	# if null 
  	# create a blank document where cwgk_id = kentucky_doc_id
  	# return document 
  end

  def self.cwgk_id_from_url
  end

end
