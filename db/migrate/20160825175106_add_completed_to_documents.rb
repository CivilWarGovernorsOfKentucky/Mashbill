class AddCompletedToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :completed, :bool
  end
end
