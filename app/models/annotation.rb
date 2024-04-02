class Annotation < ActiveRecord::Base
  belongs_to :document, optional: true
  belongs_to :user, optional: true
  belongs_to :entity, optional: true

  def ceteicean?
    self.start_container.match /tei-tei/
  end

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
      annotation_record.hypothesis_user = hyp_annotation["user"].gsub("acct:","")      
      # set hypothesis_date
      annotation_record.hypothesis_date = hyp_annotation["updated"]
      # set user_id to current user
      #annotation_record.user_id = User.where(hypothesis_user => hyp_annotation["user"].gsub("acct:",""))
      # set verbatim
      selector = hyp_annotation["target"].first["selector"]
      #binding.pry if selector.nil?
      next unless selector
      exact_selection = selector.detect { |e| e["exact"] != nil }
      container_selection = selector.detect { |e| e["startContainer"] != nil }
      #binding.pry if exact_selection.nil?
      #binding.pry if container_selection.nil?
      next unless exact_selection
      annotation_record.verbatim = exact_selection["exact"]
      annotation_record.prefix = exact_selection["prefix"]
      annotation_record.suffix = exact_selection["suffix"]
      annotation_record.start_container = container_selection["startContainer"]

      # set document_id to find or create the document from hash
      old_selection = selector.detect { |e| e["value"] != nil }
      if old_selection
        document_id = old_selection["value"]
      else
        new_selection = hyp_annotation["target"].first["source"]
        document_id = new_selection.sub(/.*\//,'') # get rid of everything in front of the slashq
      end

      document_title = hyp_annotation["document"]["title"].first
      new_doc = find_or_create_document(document_id, document_title)
      annotation_record.document_id = new_doc.id
      annotation_record.user_id = 1
      annotation_record.save!
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

  def self.request_annotations(page)
    #url = 'https://hypothes.is/api/search?group=v2oPAZgK&limit=200&offset=' + (page * 200).to_s
    url = 'https://hypothes.is/api/search?groupie=v2oPAZgK&limit=200&offset=' + (page * 200).to_s

    begin
      response = RestClient::Request.execute(method: :get, url: url,
                            timeout: 10, headers: {:WMAuthorization => 'Bearer 6879-29fcc6c2d9d966889c7edd63ad14310a'})
    rescue => e
      if e.response
        logger.error "ERROR executed hypothesis api query " + url + " and received the following exception: " + e.response
      elsif e.message
        logger.error "ERROR executed hypothesis api query " + url + " and received the following exception: " + e.message
      end
    end
    if response
      jason_hash = JSON.parse(response.body)
      jason_hash["rows"]  # this is an array of hashes
    else 
      jason_hash={}
    end
  end

  def self.get_recent_annotations_from_hypothesis
    recent_annotations = []
    all_annotations = []
    page = 0
    while page*200 < 10000
      all_annotations = request_annotations(page)
      if all_annotations.empty? then return recent_annotations end
      all_annotations.each do |hyp_annotation|
        if Annotation.where(:hypothesis_annotation_id => hyp_annotation["id"]).exists? 
          return recent_annotations
        else
          recent_annotations << hyp_annotation
        end
      end
      page = page + 1
    end
    recent_annotations
  end
  
  def cwgk_id
    document.cwgk_id
  end
  
  def hypothesis_annotation
    unless defined? @hypothesis_hash
      begin
        response = RestClient::Request.execute( method: :get, 
                                               url: "https://hypothes.is/api/annotations/#{self.hypothesis_annotation_id}",
                                                timeout: 10, 
                                                headers: {:Authorization => 'Bearer 6879-29fcc6c2d9d966889c7edd63ad14310a'})
      rescue => e
        logger.error "ERROR executed hypothesis api query " + "https://hypothes.is/api/annotations/#{self.hypothesis_annotation_id}" + " and received the following exception: " + e.response
      end 
      @hypothesis_hash = JSON.parse(response)
    end
    
    @hypothesis_hash
  end


  #####################################################
  # The CWGK TEI->Omeka conversion adds square
  # brackets to the HTML when it sees an 
  # `unclear` tag in XML.  These must be stripped.
  #####################################################
  def verbatim
    self[:verbatim].gsub('[','').gsub(']','')
  end

  def prefix
    if self[:prefix]
      self[:prefix].gsub('[','').gsub(']','')
    end
  end

  def suffix
    if self[:suffix]
      self[:suffix].gsub('[','').gsub(']','')
    end
  end

end
