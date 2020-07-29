class Review
    attr_reader :customer, :restaurant, :rating

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

    def get_customers
        Review.all.filter{|review|review.customer}
    end

    def review_customer
        self.get_customers.map{|review|review.customer}
    end

    def review_restaurant
        self.get_customers.map{|review|review.restaurant}.uniq
    end


  
end