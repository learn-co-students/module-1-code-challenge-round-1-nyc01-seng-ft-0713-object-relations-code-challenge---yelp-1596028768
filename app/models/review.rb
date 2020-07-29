class Review
    attr_accessor :customer, :restaurant, :rating
  @@all = []
  
    def initialize(customer, restaurant, rating)
        #returns the customer object for that review
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end

  def self.all
    #returns all of the reviews

    @@all
  end

  def customer
    #returns an array of all reviews for that restaurant
    Review.all.select {|rev| rev.restaurant == self}
  end

  def restaurant
    #returns the restaurant object for that given review
    Restaurant.map {}
  end

end