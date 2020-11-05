require 'text_transporter'

class Document < ActiveRecord::Base
  has_many :annotations
  has_many :entities, through: :annotations
  has_many :relationships
  has_many :deeds
  
  def applicable_annotations
    annotations.where.not(:entity_id => nil)
  end

  def self.search_or_create(cwgk_id)
  	documents = Document.basic_search(cwgk_id: cwgk_id).to_a

  	if documents.empty? || !documents.detect { |doc| doc.cwgk_id == cwgk_id }
 			# Look on the filesystem for a matching document
 			text = TextTransporter.new.fetch(cwgk_id)
 			# Read the title
	    xml = Nokogiri::XML(text)
	    title = xml.search("title").first.text
 			# Create the database record
 			doc = Document.create(:cwgk_id => cwgk_id, :title => title)
 			# append it to @documents
 			documents << doc
  	end
  	documents.sort { |a,b| a.cwgk_id <=> b.cwgk_id }
  end

  
end
