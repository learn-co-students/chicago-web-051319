class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  @@all = []

  def self.all
    @@all
  end

  def recipes
  end

  def add_recipe_card(recipe)
  end

  def declare_allergy(ingredient)
  end

  def allergens
    puts "TODO: IMPLEMENT ALLERGENS METHOD ON USER"
  end

  def top_three_recipes
  end

  def most_recent_recipe
  end

  # BONUS!!

  def safe_recipes
  end
end
