require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

brgr = Restaurant.new('brgr')
eataly = Restaurant.new('eataly')

matt = Customer.new('matt', 'peters')
jack = Customer.new('jack', 'perry')
matt1 = Customer.new('matt', 'jackson')

review1 = Review.new(matt, brgr, 4)
review2 = Review.new(jack, eataly, 3)
review3 = Review.new(matt, eataly, 7)
review4 = Review.new(matt1, eataly, 1)

binding.pry
0 # leave this here to ensure binding.pry isn't the last line
