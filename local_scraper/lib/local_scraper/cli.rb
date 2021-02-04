

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
  #list_business_attribute
  #ask user what they want to do.

end

def make_businesses
@businesses = ["Ashley Dental Centre", "Birdie Bikes", "Bell Inn"]

end

def list_local_businesses
#list each busines with a number
@businesses.each_with_index { |busines, index|
puts "#{index +1}. #{busines}"
}
end

def get_business_number(user_input =nil)
  puts"Which busines number do you need details for"
 user_input = user_input.to_i - 1
end




end
