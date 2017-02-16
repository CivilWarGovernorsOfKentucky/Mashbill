require 'csv'

namespace :relator do
  desc "adds types to seed data entities"
  task add_types_entities: :environment do
    Entity.where(:entity_type=>nil).each do |entity|
      if entity.ref_id
        if entity.ref_id.match /^N/
          entity.entity_type = Entity::Type::PERSON
        elsif entity.ref_id.match /^P/
          entity.entity_type = Entity::Type::PLACE
        elsif entity.ref_id.match /^O/
          entity.entity_type = Entity::Type::ORGANIZATION
        elsif entity.ref_id.match /^G/
          entity.entity_type = Entity::Type::GEO_FEATURE
        else
          entity.entity_type = Entity::Type::PERSON
        end
      else
        entity.entity_type = Entity::Type::PERSON
      end  
      print "Setting #{entity.ref_id} to #{entity.entity_type}\n"
      entity.save!
    end
  end
  desc "creates entities from a csv file containing ref_ids and names.  File should include headers."
  task import_csv_entities: :environment do
  	if ARGV[1].nil? then puts "Please pass a .csv file on the command line" end
  	CSV.foreach(ARGV[1], :headers => true) do |row|
  		new_entity=Entity.create(row.to_hash)
  		new_entity.user_id=1
  		new_entity.biography=""
  		new_entity.save
  	end
  end
end
