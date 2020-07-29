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
  end #test pass

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.customer == self }
  end #test pass

  def restaurants
    self.reviews.select {|review| review.restaurant }
  end #pass

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end #test pass

  def num_reviews
    self.reviews.count
  end #test pass

  def self.find_by_name(name)
    Customer.all.find(name) {|customer| customer.full_name == name }
  end #test pass

  def self.find_all_by_given_name(name)
    Customer.all.select {|customer| customer.given_name == name }
  end #test pass


end
