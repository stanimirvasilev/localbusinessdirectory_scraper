
require 'pry'
class LocalScraper::CLI

def  call

  puts "Welcome to Business Scraper!"
  #make_businesses
  #add_attributes_to_businesses
  make_businesses
  list_local_businesses
  get_business_number
  #make_businesses
  #add_attributes_to_businesses
  #list_local_businesses
  #get_business_number(number)
  #list_business_attributes
  #ask user what they want to do.

end

def make_businesses
@businesses = ["Ashley Dental Centre", "Birdie Bikes", "Bell Inn"]

end

def list_local_businesses
#list each busines with a number
puts "Choose a local busines to see it's details"
@businesses.each_with_index { |busines, index|
puts "#{index +1}. #{busines}"
}
end

def get_business_number(user_input = 2)
  binding.pry
  puts"Which busines number do you need details for"
 user_input = gets.strip.to_i - 1

  end




end
