class Entity < ActiveRecord::Base
  belongs_to :user
  has_many :annotations
  has_and_belongs_to_many :race_descriptions
  has_many :documents, through: :annotations

  module Type
  	PERSON = "person"
  	PLACE = "place"
  	ORGANIZATION = "organization"
    GEO_FEATURE = "geographic feature"
  	ALL_TYPES = [PERSON,PLACE,ORGANIZATION, GEO_FEATURE]
  end

  module Gender
  	MALE = "male"
  	FEMALE = "female"
  	UNKNOWN = "unknown"
  	ALL_TYPES = [MALE,FEMALE,UNKNOWN]
  end

end
