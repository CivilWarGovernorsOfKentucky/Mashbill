class Entity < ActiveRecord::Base
  belongs_to :user

  module Type
  	PERSON = "person"
  	PLACE = "place"
  	THING = "thing"
  end
end
