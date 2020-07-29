class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |review| review.restaurant == self} 
  end

  def customers
    reviews.map { |review|review.customer}.uniq
  end

  def average_star_rating
    reviews.each { |review|review.rating}.count / reviews.all
  end

  #Get all ratings
  #Sum up all ratings
  #Divide ratings by how many overall ratings


end
