require 'csv'

namespace :relator do
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
