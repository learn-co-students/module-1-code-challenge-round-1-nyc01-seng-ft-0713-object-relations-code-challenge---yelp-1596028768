require 'pry'
class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end
  
  def num_reviews
    self.reviews.count
  end

  def self.full_names
    self.all.map {|customer| customer.full_name}
  end

  def self.find_by_name(name)
    full_names.find {|full_name| full_name == name}
  end

  def self.find_all_by_given_name(name)
    Customer.all.select {|customer| customer.given_name == name}
  end

end
