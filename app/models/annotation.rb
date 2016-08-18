class Annotation < ActiveRecord::Base
  belongs_to :document
  belongs_to :user
  belongs_to :entity
end
