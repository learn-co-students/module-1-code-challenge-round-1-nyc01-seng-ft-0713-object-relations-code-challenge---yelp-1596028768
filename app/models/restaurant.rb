class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name          # string
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.reviews.map { |review| review.customer}.uniq
  end

  def average_star_rating
    arr_of_ratings = self.reviews.map { |review| review.rating}
    arr_of_ratings.inject(0) { |sum, ele| sum + ele}.to_f / arr_of_ratings.size
  end


end
