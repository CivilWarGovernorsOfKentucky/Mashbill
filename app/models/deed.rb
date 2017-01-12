class Deed < ActiveRecord::Base
  belongs_to :user
  belongs_to :document
  belongs_to :entity
  belongs_to :relationship
end
