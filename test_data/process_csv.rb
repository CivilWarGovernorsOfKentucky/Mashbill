#!/usr/bin/env ruby

require 'nokogiri'
require 'pry'

filename = ARGV.first

doc = File.open(filename) { |f| Nokogiri::CSV(f) }

p doc.first.text

