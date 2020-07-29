class Review
  
    attr_writer :customer, :restaurant

    @@all = []
    
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end   

    def self.all
        @@all
    end


end