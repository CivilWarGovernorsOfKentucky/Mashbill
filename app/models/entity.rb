class Entity < ActiveRecord::Base
  belongs_to :user
  has_many :annotations
  has_many :entities

  module Type
  	PERSON = "person"
  	PLACE = "place"
  	THING = "thing"
  	ALL_TYPES = [PERSON,PLACE,THING]
  end
end
