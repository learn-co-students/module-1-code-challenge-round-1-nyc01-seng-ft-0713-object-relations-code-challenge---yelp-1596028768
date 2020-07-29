require 'pry'
class Restaurant
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all
  end 

  def reviews
    Review.all.select{|a_review| a_review.restaurant== self}
  end 

  def customers #when a list is ask they ask for array
    reviews.map do |a_review|
      a_review.customer.uniq
    end
  end 
   


  def average_star_rating
    reviews.map do |av|
      av+= rating /num_reviews
    end 

  end 


end
