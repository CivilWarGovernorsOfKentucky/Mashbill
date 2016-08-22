class Annotation < ActiveRecord::Base
  belongs_to :document
  belongs_to :user
  belongs_to :entity

  def self.ingest_new_annotations
  	#  hit the hypothesis API for all group annotations ordered by most recent first
  	#  for each annotation
    annotation_list = get_recent_annotations_from_hypothesis
    annotation_list.each do |hyp_annotation|
      #  create a blank annotation
      annotation_record = Annotation.new
      # set its hypothesis_annotation_id
      annotation_record.hypothesis_annotation_id = hyp_annotation["id"]
      logger.debug("this is the annotation record ID" + annotation_record.hypothesis_annotation_id)
      # set hypothesis_user
      annotation_record.hypothesis_user = hyp_annotation["user"]      
      # set hypothesis_date
      annotation_record.hypothesis_date = hyp_annotation["updated"]
      # set user_id to current user
      annotation_record.user_id = @current_user
      # set verbatim
      selector = hyp_annotation["target"].first["selector"]
      exact_selection = selector.detect { |e| e["exact"] != nil }
      annotation_record.verbatim = exact_selection["exact"]
      # annotation_record.verbatim = hyp_annotation["target"].first["selector"].fourth["exact"]
      # set document_id to find or create the document from hash
      exact_selection = selector.detect { |e| e["value"] != nil }
      document_id = exact_selection["value"]
      #document_id = hyp_annotation["target"].first["selector"].first["value"]
      document_title = hyp_annotation["document"]["title"].first
      new_doc = find_or_create_document(document_id, document_title)
    end
  	#  else done
  end

  def self.find_or_create_document(document_id, document_title)
  	# search documents where cwgk_id = kentucky_doc_id
    #Document.create_with(title: document_title).find_or_create_by(cwgk_id: document_id)
    Document.find_or_create_by(cwgk_id: document_id) do |d|
      d.title = document_title
    end
    # if null 
  	# create a blank document where cwgk_id = kentucky_doc_id
  	# return document 
  end

  def self.cwgk_id_from_url
  end

  def self.get_recent_annotations_from_hypothesis
    # return an array of hashes that were created from json
    # the below is a single annotation being processed and turned into an array of annotations.  
    # we'll need to get the list of annotations and loop through them checking dates
        # turn json into a ruby hash
    #  check date -- is it before or after most recently created annotation in our system
    recent_annotations = []
    #  if more recent
    json_string=File.read(File.join(Rails.root,"test_data","annotation_rhiz.json"))
    json_hash = JSON.parse(json_string)
    recent_annotations << json_hash
    # else done
    logger.debug(json_hash)
    recent_annotations
  end

end
