class Entity < ActiveRecord::Base
  belongs_to :user

  module Type
  	PERSON = "person"
  	PLACE = "place"
  	THING = "thing"
  	ALL_TYPES = [PERSON,PLACE,THING]
  end
end
