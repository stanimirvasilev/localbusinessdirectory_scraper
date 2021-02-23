class LocalScraper::Scraper


def self.scrape_businesses
  page = Nokogiri::HTML(open("https://www.hamptonvillage.org.uk/index.php/directory"))
busines = page.css('ul#zentoolslist118 li')
# businesses = []


busines.each do |b|
busines_name = b.css('.element2').text
busines_details = b.css('.simple').text
# busines_info = {
#   :name => busines_name,
#   :details => busines_details
# }
# businesses << busines_info
if busines_name != ""
LocalScraper::Business.new(busines_name, busines_details)
end


end


# LocalScraper::Business.new(name)
  # puts name



end


end
