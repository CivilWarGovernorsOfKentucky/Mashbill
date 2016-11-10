class Entity < ActiveRecord::Base
  belongs_to :user
  has_many :annotations
  has_many :entities

  module Type
  	PERSON = "person"
  	PLACE = "place"
  	ORGANIZATION = "organization"
  	ALL_TYPES = [PERSON,PLACE,ORGANIZATION]
  end

  module Gender
  	FEMALE = "female"
  	MALE = "male"
  	UNKNOWN = "unknown"
  	ALL_TYPES = [FEMALE,MALE,UNKNOWN]
  end
  
end
