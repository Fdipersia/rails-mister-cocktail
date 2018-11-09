require "open-uri"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url)
result = JSON.parse(file.read)
ingredients = result["drinks"]
ingredients.each do |ingredient|
  Ingredient.create(name: "#{ingredient.values}")
end

Cocktail.create(name:"Caipirinha")
Cocktail.create(name:"Fernet")
Cocktail.create(name:"Pisco")