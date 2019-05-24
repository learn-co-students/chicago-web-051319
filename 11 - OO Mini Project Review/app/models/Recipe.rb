class Recipe
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def self.most_popular
    # Popularity is in terms of users, how is a user "choosing" a Recipe in this app?
    # Whichever recipe is associated with the most users WINS!
    self.all.max do |recipe_one, recipe_two|
      recipe_one.users.length <=> recipe_two.users.length
    end
  end

  def users
    # This is a has many through and Recipe Card is the "through" part
    recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def ingredients
    # CLUNKY...
    # results = []
    # recipe_ingredients.each do |r_i|
    #   results << r_i.ingredient
    # end
    # reults

    # FUNKY!
    recipe_ingredients.map do |r_i|
      r_i.ingredient
    end
  end

  def recipe_ingredients
    result = []
    RecipeIngredient.all.each do |r_i|
      if r_i.recipe == self
        result << r_i
      end
    end
    # RecipeIngredient.all.select do |r_i|
    #   r_i.recipe == self
    # end
  end

  def allergens
  end

  def add_ingredients(ingredients)
  end
end
