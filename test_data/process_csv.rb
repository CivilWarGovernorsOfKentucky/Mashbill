#!/usr/bin/env ruby

#require 'nokogiri'
require 'csv'
require 'pry'

filename = ARGV.first

puts "Entity.create(["
CSV.foreach(filename) do |row|
  #puts row.inspect
  puts '{ ref_id: "' + row[0] + '", name: "' + row[1] + '", user_id: 1}, '
  #puts row[0]
  #puts row[1]
  #Entity.create([{ ref_id: "KYR-0001-007-0315", name: "TBD 1", user_id: 1}, { ref_id: "KYR-0001-007-0316", name: "TBD 2"}])
end
puts "])"