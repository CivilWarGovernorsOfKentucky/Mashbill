class Relationship < ActiveRecord::Base
  belongs_to :entity_1, :class_name => "Entity", :foreign_key => :entity_1_id
  belongs_to :entity_2, :class_name => "Entity", :foreign_key => :entity_2_id
  belongs_to :user, :class_name => "User", :foreign_key => :user_id

  module Type
  	FAMILIAL = "familial"
  	POLITICAL = "political"
  	LEGAL = "legal"
  	ECONOMIC = "economic"
  	SOCIAL = "social"
  	ALL_TYPES = [FAMILIAL, POLITICAL, LEGAL, ECONOMIC, SOCIAL]
  end

end
