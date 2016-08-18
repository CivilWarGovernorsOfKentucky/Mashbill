class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :cwgk_id
      t.string :xml_file

      t.timestamps
    end
  end
end
