#require 'pry'
class Restaurant
  attr_reader :name
  #should not be able to change after the restaurant is created

  @@all = []
  def initialize(name)
    #Restaurants should be initialized with a name, as a string
    @name = name
    #returns the restaurant's name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reviews
    #returns an array of all reviews for that restaurant
    self.all.count
  end

  def customers
    #list of all customers who have reviewed a particular restaurant
    Restaurant.all.map {|name| name.review}.uniq
  end

  def average_star_rating
    #.all.sum
  end
end
    #binding.pry
  end


