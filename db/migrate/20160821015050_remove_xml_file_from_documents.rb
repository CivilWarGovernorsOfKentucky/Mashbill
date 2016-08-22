class RemoveXmlFileFromDocuments < ActiveRecord::Migration
  def change
  	    remove_column :documents, :xml_file
  end
end
