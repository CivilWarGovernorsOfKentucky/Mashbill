require 'reencoder'


namespace :relator do
  desc "re-encodes a single file"
  task reencode_file: :environment do
    abort("Usage: rake relator:reencode_file filename") if ARGV[1].blank?
      
    reencoder = Reencoder.new
    reencoder.reencode_and_reformat(ARGV[1])
  end

  desc "re-encodes a directory"
  task reencode_directory: :environment do
    abort("Usage: rake relator:reencode_directory dirname") if ARGV[1].blank?

    reencoder = Reencoder.new
    made_changes = reencoder.reencode_directory(ARGV[1])
    
    print "No UTF-16 files found to reencode.\n" unless made_changes
  end

end
