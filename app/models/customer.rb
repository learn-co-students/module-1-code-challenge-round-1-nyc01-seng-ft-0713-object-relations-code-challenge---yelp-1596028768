#require 'pry'
class Customer
  attr_accessor :given_name, :family_name
  #returns the customer's given name
  #should be able to change after the customer is created
  @@all = []

  def initialize(given_name, family_name)
    #Customer should be initialized with a given name and family name, both strings.
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
    #returns the full name of the customer, with the given name and the family name concatenated, Western style.
  end

  def self.all
    @@all
  end


  def restaurants
    #Returns a **unique** array of all restaurants a customer has reviewed
    Restaurant.map{|review| review.restaurant == self}.uniq
  end

  def add_review(restaurant, rating)

  end

  def self.num_reviews
    self.all.count
    
  end

  def find_by_name(name)
  end

  def find_all_by_given_name(name)
  end
#binding.pry
#joiner/many
end
