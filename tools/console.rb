require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


c1 = Customer.new("Israel", "Canessa")
c2 = Customer.new("Ana", "Canessa")
c3 = Customer.new("Chris", "Jimenez")
c4 = Customer.new("Andrea", "Garcia")

rt1 = Restaurant.new("Rove")
rt2 = Restaurant.new("Five Boroughs")

r1 = Review.new(c1, rt1, 10)
r2 = Review.new(c2, rt1, 8)
r3 = Review.new(c3, rt2, 9)
r4 = Review.new(c4, rt2, 6)
r5 = Review.new(c1, rt2, 10)





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line