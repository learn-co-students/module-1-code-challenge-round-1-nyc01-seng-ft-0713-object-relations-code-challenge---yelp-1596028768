require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("George" , "Washington")
customer2 = Customer.new("Iuri" , "Seara")
customer3 = Customer.new("Jake" , "Jones")

rest1 = Restaurant.new("Gina's")
rest2 = Restaurant.new("The Golden Nugget")
rest3 = Restaurant.new("Pierre's Pasta House")

review1 = Review.new(customer1 , rest1 , 3)
review10 = Review.new(customer2 , rest1 , 4)
review11 = Review.new(customer3 , rest1 , 5)
review3 = Review.new(customer2 , rest2 , 4)
review2 = Review.new(customer3 , rest3 , 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line