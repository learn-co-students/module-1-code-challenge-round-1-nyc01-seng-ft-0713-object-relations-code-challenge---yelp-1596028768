class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end
  def name
    @name
  end

  def reviews
    Restuant.all.map do |review|
      review.resturant == self
  end 

  def customers
     Resturant.all.filter { |customers| customers.review == self }.uniq
  end 



  def self.average_star_rating
    self.all. do |rest|
        rest.rating
    end
end
end
