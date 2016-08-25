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
      # set document_id to find or create the document from hash
      exact_selection = selector.detect { |e| e["value"] != nil }
      document_id = exact_selection["value"]
      document_title = hyp_annotation["document"]["title"].first
      new_doc = find_or_create_document(document_id, document_title)
      annotation_record.document_id = new_doc.id
      annotation_record.user_id = 1
      annotation_record.save
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

  def self.get_recent_annotations_from_hypothesis
    # return an array of hashes that were created from json
    # the below is a single annotation being processed and turned into an array of annotations.  
    # we'll need to get the list of annotations and loop through them checking dates
        # turn json into a ruby hash
    #  check date -- is it before or after most recently created annotation in our system
    recent_annotations = []
    all_annotations = []
    begin
      # response = RestClient.get 'https://hypothes.is/api/search?group=zm91G8nX', {:Authorization => 'Bearer 6879-29fcc6c2d9d966889c7edd63ad14310a'}
      response = RestClient::Request.execute(method: :get, url: 'https://hypothes.is/api/search?group=zm91G8nX',
                            timeout: 10, headers: {:Authorization => 'Bearer 6879-29fcc6c2d9d966889c7edd63ad14310a'})
      rescue => e
       #e.response
    end
    jason_hash = JSON.parse(response)
    all_annotations = jason_hash["rows"]  # this is an array of hashes
    # find most recent annotation create time in the system
    last_updated_annotation = Annotation.order(:updated_at => :desc).first.updated_at
    all_annotations.each do |hyp_annotation|
      if Time.parse(hyp_annotation["updated"]).to_datetime > last_updated_annotation
        recent_annotations << hyp_annotation
      end
    end
    recent_annotations
  end

end
