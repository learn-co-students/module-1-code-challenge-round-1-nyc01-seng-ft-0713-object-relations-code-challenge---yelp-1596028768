class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Reviews.all.select do |review|
      review.restaurant == self
    end 
  end 

    def customers
      self.reviews.map do |review|
        review.customer
      end
    end 
    
    def average_star_rating
      ratings_array = self.reviews.map do |review|
        review.rating
        ratings_array.inject(0) do |sum, ele|
          sum + ele.to_f / ratings_array.size 
        end 
      end 
    end 

end
