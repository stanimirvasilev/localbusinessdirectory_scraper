
class LocalScraper::CLI

def  call

  puts "Welcome to Business Scraper!"

  make_businesses
  list_local_businesses
  get_business_number
  #add_attributes_to_businesses


end

def make_businesses
LocalScraper::Scraper.scrape_businesses
@businesses = LocalScraper::Business.all
#binding.pry
end

def list_local_businesses
#list each busines with a number
puts "Choose a local busines to see it's details"
@businesses.each_with_index { |busines, index|
  #binding.pry
puts "#{index +1}. #{busines.name}"
}

end

def get_business_number
  #binding.pry
  puts"Which busines number do you need details for"
 chosen_business = gets.strip.to_i
 show_business_details_for(chosen_business) if valid_input(chosen_business, @businesses)

  end

def valid_input(input,data)
  input.to_i <= data.length && input.to_i >0

end

def show_business_details_for(chosen_business)
chosen_business = @businesses[chosen_business -1]
puts "Here are the details for #{chosen_business}"
end

end
