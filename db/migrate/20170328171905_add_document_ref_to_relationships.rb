class AddDocumentRefToRelationships < ActiveRecord::Migration
  def change
    add_reference :relationships, :document, index: true, foreign_key: true
  end
end
