class Deed < ActiveRecord::Base
  default_scope { order('created_at DESC') }

# constants
  DOC_COMPLETED = 'doc_completed'
  NEEDS_REVIEW = 'needs_review'
  REVIEWED = 'reviewed'
  ENTITY_EDIT = 'entity_edit'
  ENTITY_CREATE = 'entity_create'
  ENTITY_DELETE = 'entity_delete'
  RELATIONSHIP_EDIT = 'relationship_edit'
  RELATIONSHIP_CREATE = 'relationship_create'
  RELATIONSHIP_DELETE = 'relationship_delete'

  belongs_to :user
  belongs_to :document
  belongs_to :entity
  belongs_to :relationship

  validates_inclusion_of :deed_type, :in => [ DOC_COMPLETED, NEEDS_REVIEW, REVIEWED, ENTITY_DELETE, ENTITY_CREATE, ENTITY_EDIT, RELATIONSHIP_DELETE, RELATIONSHIP_CREATE, RELATIONSHIP_EDIT ]

  def deed_type_name
    return case self.deed_type
    when DOC_COMPLETED
      'Document Completed'
    when NEEDS_REVIEW
      'Document Marked for Review'
    when REVIEWED
      'Document Reviewed'  
    when ENTITY_EDIT
      'Entity Edited'
    when ENTITY_CREATE
      'Entity Created'
    when ENTITY_DELETE
      'Entity Deleted'
    when RELATIONSHIP_EDIT
      'Relationship Edited'
    when RELATIONSHIP_CREATE
      'Relationship Created'
    when RELATIONSHIP_DELETE
      'Relationship Deleted'
    end
  end

end
