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

  def get_author(url, css_class)
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

  def get_post_url(url, css_class)
    doc = Nokogiri::HTML(URI.open(url))
    @url_array = []
    doc.css(css_class).collect do |urls|
      @url_array << urls.attribute('href').value
    end
    @url_array.collect do |string|
      string.prepend('https://')
    end
    @url_array
  end

  def hashify_els
    list = {}
    author_array = get_author('https://dev.to/', '.crayons-story__secondary')
    title_array = get_title('https://dev.to/', 'a', '.crayons-story__title')
    post_urls = get_post_url('https://dev.to/', '[id^="article-link-"]')
    author_array.zip(title_array, post_urls) { |author, title, post| list[author.to_sym] = title, post }
    p list
  end
end
list = Scraper.new.hashify_els

File.open('list.txt', 'w') do |file|
  file.write(list)
end
