require 'pry'
require_relative '../config/environment.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cafe= Restaurant.new("cafe")
lili= Restaurant.new("lili")
dormir= Restaurant.new("dormir")

minelie= Customer.new("Minelie", "Goma")
gloria= Customer.new("gloria", "Moukoko")
fleury= Customer.new("Fleury", "Ayessa")
jessica= Customer.new("jessica", "diak")

a1= Review.new(gloria, cafe, 10)
a2= Review.new(gloria, lili, 5)
a3= Review.new(gloria, cafe, 6)
a4= Review.new(jessica, cafe, 8)
a5= Review.new(fleury, dormir, 10)
a6= Review.new(minelie, lili, 7)








binding.pry

"orangina"
0 #leave this here to ensure binding.pry isn't the last line