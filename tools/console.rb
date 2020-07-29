require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
c1= Customer.new("Jay", "Z")
c2= Customer.new("Nasir", "Jones")
c3= Customer.new("Action", "Bronson")

r1= Restaurant.new("Olive Garden")
r2= Restaurant.new("BK")
r3= Restaurant.new("Chuck e Cheese")

re1= Review.new("Olive Garden", "Jay", 1)
re2= Review.new("BK", "Nasir", 2)
re3= Review.new("Action", "Chuck e Cheese", 3)

# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line