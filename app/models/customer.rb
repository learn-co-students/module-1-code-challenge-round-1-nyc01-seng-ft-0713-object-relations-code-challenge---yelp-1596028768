require 'pry'
class Customer
  attr_accessor :given_name, :family_name
@@all= []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all<< self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end 

def reviews
    Review.all.select{|a_review| a_review.restaurant== self}
  end 

  def restaurants
    reviews.map do |a_review|
      a_review.restaurant.uniq
    end
  end 
  def add_review(restaurant, rating)
    new_review= Review.new(self.restaurant,rating)
  end 


def num_reviews
  
  self.reviews.inject(o){|a_word, cust|a_word + cust.add.review}
end 

def self.find_by_name(name)
  Customer.find_by(name: name)
end 

def self.find_all_by_given_name(name)
  Customer.all.find_by do |a_name|
    a_name.given_name
  end
end 












end
