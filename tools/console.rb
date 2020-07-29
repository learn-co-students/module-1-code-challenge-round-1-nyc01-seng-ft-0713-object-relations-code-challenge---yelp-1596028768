require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 =Customer.new("Customer", "One")
customer2 =Customer.new("Custome", "Two")
customer3 =Customer.new("Custom", "Three")
customer4 =Customer.new("Custo", "Four")
customer5 =Customer.new("Custome", "Five")

mex = Restaurant.new("Mexican Spot")
chinese = Restaurant.new("Chinese Spot")
chicken = Restaurant.new("Chicken Spot")
nacho = Restaurant.new("Nacho Spot")

review1 = Review.new(customer1, mex, 1)
review2 = Review.new(customer2, chinese, 2)
review3 = Review.new(customer3, chicken, 3)
review4 = Review.new(customer4, nacho, 4)
review5 = Review.new(customer4, mex, 3)
review6 = Review.new(customer4, mex, 9)
review7 = Review.new(customer4, mex, 15)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line