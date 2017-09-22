class Document < ActiveRecord::Base
  has_many :annotations
  has_many :entities, through: :annotations
  has_many :relationships
  
  def applicable_annotations
    annotations.where.not(:entity_id => nil)
  end
  
end
