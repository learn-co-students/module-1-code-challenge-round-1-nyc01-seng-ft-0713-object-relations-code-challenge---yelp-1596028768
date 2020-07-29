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
  end #test passed

  def customers
    self.reviews.select {|review| review.customer}.uniq
  end #test pass

  def average_star_rating  
    self.reviews.sum {|review| review.rating}.div(reviews.count)
  end #test pass

end




