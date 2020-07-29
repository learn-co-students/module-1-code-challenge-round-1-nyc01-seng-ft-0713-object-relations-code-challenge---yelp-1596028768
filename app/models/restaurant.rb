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
    Review.all.select{|review|review.restaurant == self}
  end

  def customers
    reviews.map{|review| review.customer}.uniq
  end  

  def ratings
    reviews.map{|review| review.rating }
  end

  def average_star_rating
    ratings.inject{|sum, numbers| sum + numbers}.to_f / ratings.size
  end
end
