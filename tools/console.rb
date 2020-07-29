require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Jzavier Timm", "The Timms")
c2 = Customer.new("Joanna Evans", "The Evans")
c3 = Customer.new("Tobby Stan", "The Stans")
c4 = Customer.new("Jzavier Timm", "The Other Timms")

r1 = Restaurant.new("Chinneys")
r2 = Restaurant.new("James")
r3 = Restaurant.new("Williams Pizza")
r4 = Restaurant.new("Unemployment")

rev1 = Review.new(c1, r1, 4)
rev2 = Review.new(c2, r2, 2)
rev3 = Review.new(c1, r3, 3)
rev4 = Review.new(c3, r4, 5)
rev6 = Review.new(c3, r1, 2)
rev7 = Review.new(c2, r3, 2)
rev8 = Review.new(c2, r2, 5)











binding.pry
0 #leave this here to ensure binding.pry isn't the last line