class Review
    attr_reader :customer, :restaurant, :rating
    @@all = []
    def initialize(customer, restaurant, rating)
        @customer = customer            # string
        @restaurant = restaurant        # string
        @rating = rating                # integer
        @@all << self
    end

    def self.all
        @@all
    end

end