require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

cus1 = Customer.new("Jack","Black")
cus2 = Customer.new("Debbie", "Smith")
cus3 = Customer.new("John", "Dood")

rest1 = Restaurant.new("Applebees")
rest2 = Restaurant.new("TGI Fridays")
rest3 = Restaurant.new("Pho real")

rev1 = Review.new(cus1,rest1, 5)
rev2 = Review.new(cus2, rest2, 4)
rev3 = Review.new(cus3, rest3, 3)