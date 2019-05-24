class RecipeIngredient
  attr_reader :recipe, :ingredient

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end
end
