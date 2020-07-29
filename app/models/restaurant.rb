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

  def customers
    Review.all.select{|reviews| reviews.restaurant == self}.uniq
  end

  def reviews
    self.customers.select{|restaurants| restaurants.customer}
    # returns an array of all reviews for that restaurant
  end



  def add_up_star_rating(customer)
    self.customer.select {|article| article.customer == customer}.sum
  end

  def average_star_rating
  # returns the average star rating for a restaurant based on its reviews
  end
end