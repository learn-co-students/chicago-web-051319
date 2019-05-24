class Allergy
  attr_reader :user, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end
end
