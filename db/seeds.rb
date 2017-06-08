# puts 'Cleaning database...'
# Cocktail.destroy_all

# puts 'Creating cocktails through ingredients...'

Cocktail.create(name: "moscow mule")
Cocktail.create(name: "white russian")
Cocktail.create(name: "black russian")
Cocktail.create(name: "gin and tonic")
Cocktail.create(name: "screwdriver")


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "soda water")
Ingredient.create(name: "bitters")
Ingredient.create(name: "Coffee brandy")
Ingredient.create(name: "Bourbon")
Ingredient.create(name: "Irish whiskey")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "orange juice")


# Cocktail.create!(cocktails)
# puts 'Finished!'
