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

  def get_reviews
    Review.all.select{|review|review}
  end

  def restaurant_reviews
    self.get_reviews.map{|review|review}
  end

  def restaurant_customers
    self.get_reviews.map{|review|review.customer}.uniq
  end

  def average_star_rating  ### < broke, need to add up rating, divide by rating.count
      var = self.get_reviews.reduce(0){|review|review.rating}
      var / var.count
  end

end
