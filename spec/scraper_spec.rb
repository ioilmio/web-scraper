require_relative '../bin/scraper.rb'

describe Scraper do
  let(:my_scraper_title) { Scraper.new.get_title('https://dev.to/', 'a', '.crayons-story__title') }
  let(:my_scraper_author) { Scraper.new.get_author('https://dev.to/', '.crayons-story__title') }
  let(:my_scraper_urls) { Scraper.new.get_post_url('https://dev.to/', '[id^="article-link-"]') }
  let(:list) { Scraper.new.hashify_els }

  describe '#get_title' do
    it 'returns an array of titles from dev.to homepage' do
      expect(my_scraper_title).to be_kind_of(Array)
    end
    it 'not return a string' do
      expect(my_scraper_title).not_to be_kind_of(String)
    end
    it 'returns strings inside the array' do
      expect(my_scraper_title[0]).to be_kind_of(String)
    end
  end

  describe '#get_author' do
    it 'returns an array of authors from dev.to homepage' do
      expect(my_scraper_author).to be_kind_of(Array)
    end
    it 'not returns a string' do
      expect(my_scraper_author).not_to be_kind_of(String)
    end
    it 'returns strings inside the array' do
      expect(my_scraper_author[0]).to be_kind_of(String)
    end
  end

  describe '#get_post_url' do
    it 'return an array of urls of articles' do
      expect(my_scraper_urls).to be_kind_of(Array)
    end
    it 'not returns a string' do
      expect(my_scraper_urls).not_to be_kind_of(String)
    end
    it 'returns a string inside the array' do
      expect(my_scraper_urls[0]).to be_kind_of(String)
    end
  end

  describe '#hashify_els' do
    it 'returns an hash of elements' do
      expect(list).to be_kind_of(Hash)
    end
    it 'the first element in the list should be the first title' do
      expect(list[0]).to eq(my_scraper_title.first[0][1])
    end
    it 'the first element inside the array should be the author' do
      expect(list[0]).to eq(my_scraper_author.first[0][2])
    end
  end
end
