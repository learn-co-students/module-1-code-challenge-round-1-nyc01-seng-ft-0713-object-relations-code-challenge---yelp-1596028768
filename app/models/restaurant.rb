require 'pry'
class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def all_rest_ratings
    reviews.map {|review| review.rating}
  end

  def average_star_rating
    # all_rest_ratings.sum
    all_rest_ratings.inject(0.0) {|sum ,review| sum + review} / reviews.size
  end

end
