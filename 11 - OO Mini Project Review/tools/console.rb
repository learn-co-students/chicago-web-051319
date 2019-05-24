require_relative '../config/environment.rb'

fajita = Recipe.new("fajita")
french_toast = Recipe.new("french toast")

tortilla = Ingredient.new("tortilla")
bell_pepper = Ingredient.new("bell pepper")
steak = Ingredient.new("steak")

r_i_one = RecipeIngredient.new(fajita, tortilla)
r_i_two = RecipeIngredient.new(fajita, bell_pepper)
r_i_three = RecipeIngredient.new(fajita, steak)

# p fajita.ingredients == [tortilla, bell_pepper, steak]








frankie = User.new("Frankie")

grace = User.new("Grace")
# p Recipe.all.length == 1

RecipeCard.new(fajita, frankie, 8, "2019-05-23")
RecipeCard.new(fajita, grace, 8, "2019-05-23")

RecipeCard.new(french_toast, grace, 8, "2019-05-23")

# p fajita.users
binding.pry
0
