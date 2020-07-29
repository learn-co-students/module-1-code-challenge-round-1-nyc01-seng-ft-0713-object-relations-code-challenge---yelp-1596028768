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
    Review.all.select { |review| review.customer == self }.uniq
  end

  def add_review(restaurant, rating)
    Review.new(restaurant, self , rating)
  end

  
  def num_reviews
    restaurants.map { |review| review.rating }.count
  end
  
  
  def self.find_by_name(name)
      Review.all.find { |review| review.customer == name }
  end

  # def self.find_all_by_given_name(name)
   
  # end


end
