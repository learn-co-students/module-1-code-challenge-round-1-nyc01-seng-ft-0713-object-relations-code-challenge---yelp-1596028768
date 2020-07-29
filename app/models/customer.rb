class Customer
  attr_accessor :given_name, :family_name

  @@all =[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{family_name} #{given_name}" #western-style ? like last name + first name ?
  end

  def self.all
    @@all
  end

  def get_restaurant
    Review.all.filter{|review| review.restaurant}
  end
  
  def customer_restaurants
    self.get_restaurant.map{|review|review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
     Review.new(self,restaurant, rating)
  end

     def num_reviews
      self.customer_restaurants.map{|review|review}.count
    end

    def self.find_by_name(full_name) ## < western style ???
      self.all.map do |customer|
        if customer.full_name == full_name
            customer.given_name
        end
      end[0]
    end

    def self.find_all_by_given(name)
      self.all.select {|customer| customer.given_name}
    end

 

end
