class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
      @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    Review.all.select{|reviews| reviews.customer == self}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.restaurants.select{|customers| customers.restaurant}.count
    # Returns the total number of reviews that a customer has authored
  end

  def self.find_by_name(name_string)
    self.full_name.select{|customer| customer.full_name == name_string}
    # given a string of a **full name**, returns the **first customer** whose full name matches
  end

  def self.find_all_by_given_name(name_string)
    self.all.select{|customer| customer.given_name == name_string}
    # given a string of a given name, returns an **array** containing all customers with that given name
  end

end
