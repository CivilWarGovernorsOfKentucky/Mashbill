class Entity < ActiveRecord::Base
  belongs_to :user
  has_many :annotations
  has_and_belongs_to_many :race_descriptions
  has_many :documents, through: :annotations
  has_many :left_relationships, :class_name => "Relationship", :foreign_key => :entity_1_id
  has_many :right_relationships, :class_name => "Relationship", :foreign_key => :entity_2_id

  validates :birth_date, format: { with: /[cC]?(\d\d\d\d)?-(\d\d)?-(\d\d)?/,
    message: "Bad date format.  Allowed:  2001, 2001-09, 2001-09-11, --09-11, --09, ---11" }, allow_blank: true

  validates :death_date, format: { with: /[cC]?(\d\d\d\d)?-(\d\d)?-(\d\d)?/,
    message: "Bad date format.  Allowed:  2001, 2001-09, 2001-09-11, --09-11, --09, ---11" }, allow_blank: true

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

  def relationships
    left_relationships + right_relationships
  end

end
