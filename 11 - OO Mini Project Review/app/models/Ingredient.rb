class Ingredient

  def initialize(name)
    @name = name
  end

  @@all = []

  def self.all
    @@all
  end

  def self.most_common_allergen
    # which of my instances cause allergies for the highest number of users?
    # One allergen holds an ingredient and a user
    # So if I can figure out the allergen count for each ingredient
    # Then I can return the ingredient with the highest allergen count!
  end
end
