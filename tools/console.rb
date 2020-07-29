require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


dave = Customer.new("Dave", "Smith")
mimi = Customer.new("Mimi", "Oj")
alex = Customer.new("Alex", "Ben")
ben = Customer.new("ben", "Oj")
dave2 = Customer.new("Dave", "Bab")

chili = Restaurant.new("Chilis")
hide = Restaurant.new("Hide out")
bop = Restaurant.new("Bops")
takis = Restaurant.new("Takis")

good = Review.new(dave, chili, 4)
bad = Review.new(mimi, hide, 2)
okay = Review.new(alex, bop, 4)
soso = Review.new(ben, takis, 3)
meh = Review.new(dave, bop, 2)
terrible = Review.new(mimi, takis, 1)
best = Review.new(alex, hide, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line