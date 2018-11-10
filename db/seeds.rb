require "open-uri"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url)
result = JSON.parse(file.read)
ingredients = result["drinks"]

ingredients.each do |ingredient|
  Ingredient.create(name: "#{ingredient.values[0]}")
end

caipirinha = Cocktail.new(name:"Caipirinha")
caipirinha.remote_photo_url = "https://bebidascoctel.com/wp-content/uploads/2018/10/caipirinha-900x500.jpeg"
caipirinha.save

fernet = Cocktail.new(name:"Fernet")
fernet.remote_photo_url = "http://k30.kn3.net/7/2/F/D/8/2/101.png"
fernet.save

pisco = Cocktail.new(name:"Pisco sour")
pisco.remote_photo_url = "http://dsijlpx1qzaz8.cloudfront.net/wp-content/uploads/2017/05/29195957/Pisco1.jpg"
pisco.save