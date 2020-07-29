class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name              # string
    @family_name  = family_name           # string
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    self.reviews.map { |review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end

  # given string of **full_name**, returns the **first customer** whose
  # full name matches
  def self.find_by_name(name)
    self.all.find { |c| c.full_name == name}
  end

  # given a string of a given name, returns an **array** containing all 
  # customers with that given name
  def self.find_all_by_given_name(name)
    self.all.select { |c| c.given_name == name}
  end

end
