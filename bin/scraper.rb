#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'

class Scraper
  def get_title(url, selector, css_class)
    doc = Nokogiri::HTML(URI.open(url))
    @title_array = []
    doc.css(css_class).collect do |title|
      @title_array << title.css(selector).text
    end
    @title_array.each do |item|
      item.to_s.strip!
    end
    @title_array
  end
end

# my_scraper = Scraper.new.get_title('https://dev.to/', 'a', '.crayons-story__title')
# p my_scraper
