class Review
  attr_accessor :resturant 
  attr_reader :customer, :rating
  @@all = []

  def inititalize(customer, resturant, rating)
    @customer = customer
    @resturant = restaurant
    @rating = rating 
    Review.all << self 
  end 

def rating
    @rating 
end 
  def self.all
    @@all
  end 

  def customer
    self.all.filter do |customer|
        customer.review == self 
    end

    def restaurants
        Reviews.all.map do |restaurant|
            resturant.reviews  
        end 

end