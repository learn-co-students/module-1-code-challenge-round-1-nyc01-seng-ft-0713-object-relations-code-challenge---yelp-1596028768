class Customer
  
  attr_accessor :given_name, :family_name
  
  @@all = []
  
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  
  def self.all
    @@all
  end 

  def reviews
    Review.all.select do |review|
      review.customer == self
    end 
  end 


  def restaurants 
    self.reviews.map do |restaurant|
      review.restaurant.uniqok 
    end 
  end

  def add_review(restaurants, rating)
     Review.new(self, restaurants, rating)
  end

  def num_reviews
    sel.reviews.count
  end 


  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end 
  end 

  def self.find_all_by_given_name(name)
    self.all.select do |customer| 
      customer.given_name == name
    end
  end 

end
