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

  def get_author(url, _selector, css_class)
    doc = Nokogiri::HTML(URI.open(url))
    @author_array = doc.css(css_class).text.split("\n")
    @author_array.each do |item|
      if item != ''
        item.to_s.strip!
        item.gsub!(/[[:space:]]/, ' ')
      end
    end
    @author_array.delete_if(&:empty?)
    @author_array
  end

  def get_post_url(url, selector)
    doc = Nokogiri::HTML(URI.open(url))
    @url_array = doc.css(selector).attribute('href').value
    @url_array
  end
end

my_scraper = Scraper.new.get_title('https://dev.to/', 'a', '.crayons-story__title')
my_scraper1 = Scraper.new.get_author('https://dev.to/', 'a', '.crayons-story__secondary')
my_scraper2 = Scraper.new.get_post_url('https://dev.to/', 'a[id^="article-link"]')
p my_scraper.first.class
p my_scraper2.class
p my_scraper1.first.class
