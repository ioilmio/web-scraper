require_relative '../bin/scraper.rb'

describe Scraper do
  let(:my_scraper) { Scraper.new.get_title('https://dev.to/', 'a', '.crayons-story__title') }
  describe '#get_title' do
    it 'returns an array of titles from dev.to homepage' do
      expect(my_scraper).to be_kind_of(Array)
    end
    it 'not return a string' do
      expect(my_scraper).not_to be_kind_of(String)
    end
    it 'returns strings inside the array' do
      expect(my_scraper[0]).to be_kind_of(String)
    end
  end
end
