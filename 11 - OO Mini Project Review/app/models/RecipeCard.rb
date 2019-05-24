class RecipeCard
  attr_reader :recipe, :user, :rating, :date

  def initialize(recipe, user, rating, date)
    @recipe = recipe
    @user = user
    @rating = rating
    @date = date
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

end
