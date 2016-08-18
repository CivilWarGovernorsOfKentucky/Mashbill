class Relationship < ActiveRecord::Base
  belongs_to :entity_1
  belongs_to :entity_2
  belongs_to :user
end
