require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("Charlie's Bistro")
rest2 = Restaurant.new("Amy's Bar")
rest3 = Restaurant.new("Ale house")

cust1 = Customer.new("Sam","Bricks")
cust2 = Customer.new("Sally","Ford")
cust3 = Customer.new("Frank","Tank")

rev1 = Review.new(cust1,rest1,1)
rev2 = Review.new(cust2,rest1,2)
rev3 = Review.new(cust3,rest1,3)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line