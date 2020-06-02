#!/usr/bin/env ruby
require_relative '../lib/scraper_lib.rb'

list = Scraper.new.hashify_els

File.open('list.txt', 'w') do |file|
  file.write(list)
end
