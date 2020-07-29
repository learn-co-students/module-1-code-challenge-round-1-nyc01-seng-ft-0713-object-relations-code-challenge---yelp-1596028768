class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def given_name
    @given_name
  end 

  def family_name
    @family_name
  end


  def self.all
    @@all
  end 

  def full_name
    "#{given_name} #{family_name}"
  end

  def resturants
    Customer.all.map { |review| review.customer == self}.uniq
  end 
end
