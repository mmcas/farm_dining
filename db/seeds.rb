# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# remote_photo_url:"https://cdn.shopify.com/s/files/1/1003/1822/products/Carrot_Danvers_42077753_2048x2048.jpeg" ,
# remote_photo_url: "https://avatars3.githubusercontent.com/u/31936412?s=460&v=4")
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Saves new user

# New user MADS
require "cloudinary"
include CloudinaryHelper

puts 'Cleaning DB....'
Order.destroy_all
Ingredient.destroy_all
Farm.destroy_all
ShoppingBasket.destroy_all
Restaurant.destroy_all
User.destroy_all

puts 'add users mads, floor, mark, iris'
mads = User.new(
  email: "mads@gmail.com",
  password: "password"
)
mads.remote_photo_url = "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg"
# Saves new user
mads.save!


restaurant2 = Restaurant.new(location: "Bos en Lommerplein 2, Amsterdam", user: mads)
restaurant2.save!



floor = User.new(
  email: "floor@gmail.com",
  password: "password"
)
floor.remote_photo_url = "http://res.cloudinary.com/dnejf9j73/image/upload/v1520436403/qug4mgngihtwzk01sxd6.jpg"
# Saves new user
floor.save!

puts 'add restaurants to users '
restaurant3 = Restaurant.new(location: "Bos en Lommer", user: floor)
restaurant3.save!

# New user Mark
mark = User.new(
  email: "mark@gmail.com",
  password: "password")
# Adds user's photo
mark.remote_photo_url = "https://avatars1.githubusercontent.com/u/35243620?s=400&v=4"
# Saves new user
mark.save!


restaurant4 = Restaurant.new(location: "Utrecht", user: mark)
restaurant4.save!

# New user Iris
iris = User.new(
  email: "irisi@gmail.com",
  password: "password")
# Adds user's photo
iris.remote_photo_url = "https://avatars1.githubusercontent.com/u/35067263?s=460&v=4"
# Saves new user
iris.save!


restaurant5 = Restaurant.new(location: "Zaandam", user: iris)
restaurant5.save!

puts 'Creating farms'
farm1= Farm.new(location: "Overhoeksplein 2, Amsterdam"  ,farm_name: "farm 1" ,farmers_name: "Piet de Boer")
farm1.save!

farm1= Farm.new(location:'Schapenlaan 20, 1862 PW Bergen',farm_name:'Van de Stolp',farmers_name:'Greetje koren')

farm1.save!

farm1= Farm.new(location:'Schapenlaan 20, 1862 PW Bergen',farm_name:'Van der Stolp',farmers_name:'Greetje koren')

farm1.save!
farm2= Farm.new(location:'Hoofdvaart, Hoofddorp',farm_name:'De Witte Boerderij',farmers_name:'Bert Spruitjes')
farm2.save!
farm3= Farm.new(location:'Burgemeester Peereboomweg, Zuiderwoude',farm_name:'de Kas',farmers_name:'Annelies de Jong')
farm3.save!
farm4= Farm.new(location:'Laan, Broek in Waterland',farm_name:'Under The Willows',farmers_name:'')
farm4.save!

# farm5= Farm.new(location:'Den Ilp 63, 1127 PE Den Ilp',farm_name:'Harvest Art',farmers_name:'Anton Heyboer')
# farm5.save!
# farm6= Farm.new(location:'Het Twiske',farm_name:'Our Little place',farmers_name:'Piet de Kleine')
# farm6.save!
# farm7= Farm.new(location:'Oosteinde, de Weiver',farm_name:'De Hooischuur',farmers_name:'Angela Tok')
# farm7.save!
# farm8= Farm.new(location:'Legmeer',farm_name:'Farmers Land',farmers_name:'John van de Akker')
# farm8.save!
# farm9= Farm.new(location:'Waverveen',farm_name:'The Big Barn',farmers_name:'Maik de Boer')
# farm9.save!

puts 'Creating ingredients..'
# ingr = Ingredient.new( name: "Test carrot" ,
#   description: "Mixed colors",
#   main_category: "Fruits & Vegetables "  ,sku:"car-01",
#   category: "Carrots"   ,
#   price: 5,
#   rating: "1",
#   available_quantity: 500000,
#   farm_id: farm1.id,
#   price_type: "per unit1",
#   remote_photo_url: cl_image_path("harshal-s-hirve-44494-unsplash.jpg"))

# ingr.save!


ingr = Ingredient.new(name:'carrot',description:'Mixed colored carrots, fresh from the land, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Fruit & Vegetables',category:'Carrots',price:2,rating:1,sku:'1',farm_id:farm1.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('harshal-s-hirve-44494-unsplash.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Dried Chickpeas',description:'chickpeas dried Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Grains & Legumes',category:'Legumes',price:3,rating:1,sku:'3',farm_id:farm1.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-273838.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Steak',description:'Steak  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Meat',category:'Beef',price:6,rating:1,sku:'5',farm_id:farm1.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-112781.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Chicken Eggs',description:'Wheat  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Dairy & Eggs',category:'Eggs',price:2,rating:1,sku:'6',farm_id:farm1.id,  available_quantity:20,price_type:'Dose(20)',  remote_photo_url: cl_image_path('Metal-easter-eggs-basket.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Wheat grains',description:'Wheat grains Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Grains & Legumes',category:'Grains',price:2,rating:1,sku:'7',farm_id:farm2.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Cabbage-vegetable-power-green.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Kale',description:'Sausages lorem ipsum  and so on ',main_category:'Grains & Legumes',category:'Vegetables',price:0.5,rating:1,sku:'8',farm_id:farm2.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('Kale-vegetables-brassica-oleracea-var-sabellica-l-51372.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Sausages',description:'Sausages lorem ipsum  and so on ',main_category:'Meat',category:'Porc',price:2,rating:1,sku:'9',farm_id:farm2.id,  available_quantity:20,price_type:'Package(10)',  remote_photo_url: cl_image_path('meat-fridge-food-sausage-84267.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Old Farmers Cheese',description:'The best and very tasty cheese  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Dairy & Eggs',category:'Cheese',price:17,rating:1,sku:'10',farm_id:farm2.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-277276.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Potato',description:'all potatoes',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:1,sku:'11',farm_id:farm3.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('Potatoes-vegetables-erdfrucht-bio-144248.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Corn',description:'Corny Corn lorem ipsum lorem loriadad',main_category:'Grains & Legumes',category:'Grains',price:3,rating:1,sku:'12',farm_id:farm3.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-206653.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Smocked Speck',description:'Speck ',main_category:'Meat',category:'Porc',price:10,rating:1,sku:'13',farm_id:farm3.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-306799.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Cow-milk',description:'fresh raw cowmilk',main_category:'Dairy & Eggs',category:'Milk',price:2,rating:1,sku:'14',farm_id:farm3.id,  available_quantity:30,price_type:'liters',  remote_photo_url: cl_image_path('Pexels-photo-248337.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Fresh Yoghurt',description:'The best Goat’s milk yoghurt.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Dairy & Eggs',category:'Yoghurt',price:2,rating:1,sku:'15',farm_id:farm3.id,  available_quantity:30,price_type:'liters',  remote_photo_url: cl_image_path('Pexels-photo-373882.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Cabbage',description:'Cabbage cabbage lorem ipusm ',main_category:'Fruit & Vegetables',category:'Vegetables',price:2,rating:1,sku:'16',farm_id:farm3.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('Cabbage-vegetable-power-green.jpg'))
ingr.save!





ingr1 = Ingredient.new( name: "Sweet Carrots"  ,

  description: "Mixed colors"   ,
  main_category: "Fruits & Vegetables " ,sku:"pot-01",
  category: "Carrots" ,
  price: 4,
  rating: "1",

  available_quantity: 50, farm_id: farm1.id  , price_type: "kg",
  remote_photo_url: cl_image_path("harshal-s-hirve-44494-unsplash.jpg"))

ingr1.save!

ingr2 = Ingredient.new( name: "Sweet Strawberry"  ,description: "Sweet sweet taste  and colors"  ,
  main_category: "Fruits & Vegetables ",sku:"straw-01" ,category: "Strawberry"   ,price: 8,  rating: "1",

  available_quantity: 50, farm_id: farm1.id  ,price_type: "kg",
  remote_photo_url: cl_image_path("sygmleuye6nujdaurh3w.png") )


ingr2.save!


puts "Finished, yeah!"
