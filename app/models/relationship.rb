class Relationship < ActiveRecord::Base
  belongs_to :entity_1
  belongs_to :entity_2
  belongs_to :user

  module Type
  	FAMILIAL = "familial"
  	POLITICAL = "political"
  	LEGAL = "legal"
  	ECONOMIC = "economic"
  	SOCIAL = "social"
  	ALL_TYPES = [FAMILIAL, POLITICAL, LEGAL, ECONOMIC, SOCIAL]
  end

end
