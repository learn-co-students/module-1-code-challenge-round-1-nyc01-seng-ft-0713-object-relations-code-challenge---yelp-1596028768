class CustRev
attr_reader :review, :restaurant, :rating
@@all = []

def initialize(review, restaurant, rating)
    @review = review
    @restaurant = restaurant
    @rating = rating
    CustRev.all << self
end

def self.all
    @@all
end

end 
