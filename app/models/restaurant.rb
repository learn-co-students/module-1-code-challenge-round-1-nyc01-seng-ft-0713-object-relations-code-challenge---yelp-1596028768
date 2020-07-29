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
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def ratings
    reviews.map { |review| review.rating }
  end

  def avarage_star_rating
    ratings.inject(0.0) { |sum, element| sum + element } / ratings.size
  end
end
