class LocalScraper::Scraper

def self.scrape_businesses
  page = Nokogiri::HTML(open("https://www.hamptonvillage.org.uk/index.php/directory"))
busines = page.css('ul#zentoolslist118 li')
busines.each do |b|
name = b.css('.element2').text
detais = b.css('.simple').text
binding.pry
end


  #LocalScraper::Business.new(name)
  # puts name



end


end
