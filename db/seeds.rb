# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# Cocktail.create(name: "Mojito")
# Cocktail.create(name: "Margarita")
# Cocktail.create(name: "Moroccan Tea")

require 'open-uri'
require 'json'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_raw = open(url).read
ingredients_json = JSON.parse(ingredients_raw)
ingredients_json["drinks"].each do |ingredient|
  Ingredient.create!(name: "#{ingredient["strIngredient1"]}")
end

#  create!(name: “#{ingredient[“strIngredient1”]}“)
#  ingredients_json.("drinks").each do |ingredient|
