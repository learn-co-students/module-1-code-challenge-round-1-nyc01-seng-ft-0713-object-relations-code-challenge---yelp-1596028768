require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
 c1 = Customer.new("Ryan", "Locascio")
 c2 = Customer.new("Joe", "Swanson")
 c3 = Customer.new("Peter", "Griffin")

 r1 = Restaurant.new("Stellas")
 r2 = Restaurant.new("Crabtrees")
 r3 = Restaurant.new("Fridays")

 critic1 = Review.new("Ryan", "Stellas", 4)
 critic2 = Review.new("Joe", "Crabtrees", 3)
 critic3 = Review.new("Peter", "Fridays", 2)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line