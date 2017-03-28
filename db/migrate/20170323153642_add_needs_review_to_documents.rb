class AddNeedsReviewToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :needs_review, :boolean
  end
end
