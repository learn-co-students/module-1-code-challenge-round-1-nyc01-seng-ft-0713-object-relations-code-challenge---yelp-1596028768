require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jon = Customer.new("Jon", "Doe")
patty = Customer.new("Patty", "Smith")
ben = Customer.new("Ben", "Sherman")
benny = Customer.new("Ben", "King")

apple_b = Restaurant.new("Apple Bee's")
dennys = Restaurant.new("Dennys")
sweetg = Restaurant.new("Sweet Green")
chilies = Restaurant.new("Chillies")
franks = Restaurant.new("Franks")

good = Review.new(jon, apple_b, 8)
bad = Review.new(jon, dennys, 3)
medium = Review.new(jon, sweetg, 5)
great = Review.new(patty, chilies, 10)
really_bad = Review.new(ben, apple_b, 1)
medium_good = Review.new(ben, franks, 6)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line