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
# New user Mads
mads = User.new(
  email: "mads@gmail.com",
  password: "password"
)
mads.remote_photo_url = "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg"
mads.save!

# New user Floor
floor = User.new(
  email: "floor@gmail.com",
  password: "password"
)
floor.remote_photo_url = cl_image_path("eksfh0ibso2p5idyqarw.jpg")
floor.save!

# New user Mark
mark = User.new(
  email: "mark@gmail.com",
  password: "password")
mark.remote_photo_url = "https://avatars1.githubusercontent.com/u/35243620?s=400&v=4"
mark.save!

# New user Iris
iris = User.new(
  email: "irisi@gmail.com",
  password: "password")
# Adds user's photo
iris.remote_photo_url = "https://avatars1.githubusercontent.com/u/35067263?s=460&v=4"
# Saves new user
iris.save!

puts 'add restaurants to users mads, floor, mark and iris'
restaurant_floor = Restaurant.new(location: "Willem de Zwijgerlaan 100, Amsterdam", user: floor)
restaurant_floor.save!

restaurant_mads = Restaurant.new(location: "Bos en Lommerplein 2, Amsterdam", user: mads)
restaurant_mads.save!

restaurant_mark = Restaurant.new(location: "Utrecht", user: mark)
restaurant_mark.save!

restaurant_iris = Restaurant.new(location: "Zaandam", user: iris)
restaurant_iris.save!

puts 'Creating farms'

# example = Farm.new(
#   location: ,
#   farm_name: ,
#   farmers_name: ,
#   remote_avatar_photo_url: ,
#   remote_farm_photo_url: ,
#   farmer_email: ,
#   description: )
# example.save!

piet = Farm.new(
  location: "Overhoeksplein 2, Amsterdam",
  farm_name: "Boerderij Amsterdam Centraal",
  farmers_name: "Piet de Boer",
  remote_avatar_photo_url: cl_image_path("piet-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-piet.jpg"),
  farmer_email: "piet.de.boer@gmail.com",
  description: "Description: needs attention :).")
piet.save!

franciscus = Farm.new(
  location: 'Schapenlaan 20, 1862 PW Bergen',
  farm_name: 'Van de Stolp',
  farmers_name: 'Franciscus de Groot',
  remote_avatar_photo_url: cl_image_path("franciscus-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-franciscus.jpg"),
  farmer_email: 'franciscus.de.groot@gmail.com',
  description: "Description: needs attention :).")
franciscus.save!

bert = Farm.new(
  location: 'Grevelingen 12, Uithoorn',
  farm_name: 'De Witte Boerderij',
  farmers_name: 'Bert Spruitjes',
  remote_avatar_photo_url: cl_image_path("bert-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-bert.jpg"),
  farmer_email: "bert.spruitjes@gmail.com",
  description: 'This farm is a biological farm. We have horses on the farm as well. We treat our plants with love and only harvest them when they are ready to shine. You are always welcome to see this for yourself. We make our own cheeses. Also, we produce our own sausages. They are very popular. Feel free to contact us, to share ideas or just for a cup of coffee.')
bert.save!

annelies = Farm.new(
  location: 'Burgemeester Peereboomweg 200, Zuiderwoude',
  farm_name: 'de Kas',
  farmers_name: 'Annelies de Jong',
  remote_avatar_photo_url: cl_image_path("annelies-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-annelies.jpg"),
  farmer_email: "annelies.de.jong@gmail.com",
  description: "Description: needs attention :).")
annelies.save!

anton = Farm.new(
  location: 'Den Ilp 63, 1127 PE Den Ilp',
  farm_name: 'Harvest Art',
  farmers_name: 'Anton Heyboer',
  remote_avatar_photo_url: cl_image_path("anton-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-anton.jpg"),
  farmer_email: 'anton.heyboer@gmail.com',
  description: "Description: needs attention :).")
anton.save!

hannes = Farm.new(
  location: 'Het Twiske',
  farm_name: 'Our Little place',
  farmers_name: 'Hannes de Kleine',
  remote_avatar_photo_url: cl_image_path("hannes-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-hannes.jpg"),
  farmer_email: 'hannes.de.kleine@gmail.com' ,
  description: "Description: needs attention :).")
hannes.save!

angela = Farm.new(
  location: 'Oosteinde, de Weiver',
  farm_name: 'De Hooischuur',
  farmers_name: 'Angela Tok',
  remote_avatar_photo_url: cl_image_path("angela-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-angela.jpg"),
  farmer_email: 'angela.tok@gmail.com',
  description: "Description: needs attention :).")
angela.save!

john = Farm.new(
  location: 'Ruit 2, Uithoorn',
  farm_name: 'Farmers Land',
  farmers_name: 'John van de Akker',
  remote_avatar_photo_url: cl_image_path("john-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-john.jpg"),
  farmer_email: 'john.van.de.akker@gmail.com',
  description: "Description: needs attention :).")
john.save!


# farm9= Farm.new(location:'Waverveen',farm_name:'The Big Barn',farmers_name:'Maik de Boer')
# farm9.save!

# farm4= Farm.new(
#   location:'Laan, Broek in Waterland',
#   farm_name:'Under The Willows',
#   farmers_name:'')
# farm4.save!

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


carrot = Ingredient.new(
  name:'carrot',
  description:'Mixed colored carrots, fresh from the land, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',
  main_category:'Fruit & Vegetables',
  category:'Carrots',
  price:2,rating: 2,
  sku:'1',
  farm_id: piet.id,
  available_quantity:20,price_type:'kg',
  remote_photo_url: cl_image_path('harshal-s-hirve-44494-unsplash.jpg'))
carrot.save!

chickpeas = Ingredient.new(
  name: 'Dried Chickpeas',
  description: 'chickpeas dried Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',
  main_category: 'Grains & Legumes',
  category: 'Legumes',
  price: 3,
  rating: 4,
  sku: '3',
  farm_id: piet.id,
  available_quantity: 20,
  price_type: 'kg',
  remote_photo_url: cl_image_path('pexels-photo-273838.jpg'))
chickpeas.save!

steak = Ingredient.new(
  name:'Steak',
  description:'Steak Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',
  main_category:'Meat',
  category:'Beef',
  price: 6,
  rating:3,
  sku:'5',
  farm_id: piet.id,
  available_quantity: 30,
  price_type: 'kg',
  remote_photo_url: cl_image_path('pexels-photo-112781.jpg'))
steak.save!

eggs = Ingredient.new(
  name:'Chicken Eggs',
  description:'Wheat Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',
  main_category:'Dairy & Eggs',
  category:'Eggs',
  price: 2,
  rating:1,
  sku:'6',
  farm_id: piet.id,
  available_quantity: 20,
  price_type:'Dose(20)',
  remote_photo_url: cl_image_path('Metal-easter-eggs-basket.jpg'))
eggs.save!

wheat_grains = Ingredient.new(
  name:'Wheat grains',
  description:'Wheat grains Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',
  main_category:'Grains & Legumes',
  category:'Grains',
  price: 2,
  rating: 1,
  sku:'7',
  farm_id: franciscus.id,
  available_quantity: 20,
  price_type: 'kg',
  remote_photo_url: cl_image_path('Cabbage-vegetable-power-green.jpg'))
wheat_grains.save!

kale = Ingredient.new(
  name:'Kale',
  description:'Sausages lorem ipsum and so on ',
  main_category:'Grains & Legumes',
  category:'Vegetables',
  price: 0.5,
  rating:1,
  sku:'8',
  farm_id: franciscus.id,
  available_quantity: 30,
  price_type:'kg',
  remote_photo_url: cl_image_path('Kale-vegetables-brassica-oleracea-var-sabellica-l-51372.jpg'))
kale.save!

sausages = Ingredient.new(
  name:'Sausages',
  description:'Sausages lorem ipsum  and so on',
  main_category: 'Meat',
  category:'Porc',
  price:2,
  rating:1,
  sku:'9',
  farm_id: franciscus.id,
  available_quantity: 20,
  price_type:'Package(10)',
  remote_photo_url: cl_image_path('meat-fridge-food-sausage-84267.jpg'))
sausages.save!

old_farmers_cheese = Ingredient.new(
  name:'Old Farmers Cheese',
  description:'The best and very tasty cheese Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',
  main_category:'Dairy & Eggs',
  category:'Cheese',
  price:17,
  rating:1,
  sku:'10',
  farm_id: franciscus.id,
  available_quantity:20,
  price_type:'kg',
  remote_photo_url: cl_image_path('Pexels-photo-277276.jpg'))
old_farmers_cheese.save!

potato = Ingredient.new(
  name:'Potato',
  description:'This potato is perfect for making fries. They are also perfect to make Dutch stamppot. Actually, the potatoes are good for all sorts of cooking',
  main_category:'Fruit & Vegetables',
  category:'Vegetables',
  price:4,
  rating:1,
  sku:'11',
  farm_id: bert.id,
  available_quantity: 30,
  price_type:'kg',
  remote_photo_url: cl_image_path('Potatoes-vegetables-erdfrucht-bio-144248.jpg'))
potato.save!

corn = Ingredient.new(
  name:'Corn',
  description:'Corny Corn',
  main_category:'Grains & Legumes',
  category: 'Grains',
  price: 3,
  rating:1,
  sku:'12',
  farm_id: bert.id,
  available_quantity: 20,
  price_type:'kg',
  remote_photo_url: cl_image_path('Pexels-photo-206653.jpg'))
corn.save!

smoked_bacon = Ingredient.new(
  name:'Smoked Bacon',
  description:'Bacon',
  main_category:'Meat',
  category:'Porc',
  price: 10,
  rating: 1,
  sku:'13',
  farm_id: bert.id,
  available_quantity:20,
  price_type:'kg',
  remote_photo_url: cl_image_path('Pexels-photo-306799.jpg'))
smoked_bacon.save!

cow_milk = Ingredient.new(
  name:'Cow-milk',
  description:'fresh raw cowmilk',
  main_category:'Dairy & Eggs',
  category:'Milk',
  price: 2,
  rating: 1,
  sku: '14',
  farm_id: annelies.id,
  available_quantity: 30,
  price_type: 'liters',
  remote_photo_url: cl_image_path('Pexels-photo-248337.jpg'))
cow_milk.save!

yoghurt = Ingredient.new(
  name:'Fresh Yoghurt',
  description:'The best Goat’s milk yoghurt.',
  main_category:'Dairy & Eggs',
  category:'Yoghurt',
  price: 2,
  rating:1,
  sku:'15',
  farm_id: annelies.id,
  available_quantity: 30,
  price_type:'liters',
  remote_photo_url: cl_image_path('Pexels-photo-373882.jpg'))
yoghurt.save!

cabbage = Ingredient.new(
  name:'Cabbage',
  description:'Great Cabbage',
  main_category:'Fruit & Vegetables',
  category:'Vegetables',
  price:2,
  rating:1,
  sku:'16',
  farm_id: annelies.id,
  available_quantity: 30,
  price_type:'kg',
  remote_photo_url: cl_image_path('Cabbage-vegetable-power-green.jpg'))
cabbage.save!

sweet_carrots = Ingredient.new(
  name: "Sweet Carrots"  ,
  description: "Sweet carrots, lovely to make carrotsoup."   ,
  main_category: "Fruits & Vegetables " ,sku:"pot-01",
  category: "Carrots" ,
  price: 4,
  rating: "1",
  available_quantity: 50,
  farm_id: annelies.id,
  price_type: "kg",
  remote_photo_url: cl_image_path("harshal-s-hirve-44494-unsplash.jpg"))
sweet_carrots.save!

strawberries = Ingredient.new(
  name: "Sweet Strawberry",
  description: "Sweet sweet taste and colors"  ,
  main_category: "Fruits & Vegetables",
  sku:"straw-01",
  category: "Strawberry",
  price: 8,
  rating: "1",
  available_quantity: 50,
  farm_id: annelies.id,
  price_type: "kg",
  remote_photo_url: cl_image_path("rexnm5rdwtqb35nphkcg.png") )
strawberries.save!

puts "Finished, yeah!"
