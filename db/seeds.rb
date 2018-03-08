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

puts 'add user mads'
mads = User.new(
  email: "mads@gmail.com",
  password: "password"
)
mads.remote_photo_url = "https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg"
# Saves new user
mads.save!

puts 'add restaurant user mads'
restaurant2 = Restaurant.new(location: "Bos en Lommerplein 2, Amsterdam", user: mads)
restaurant2.save!


puts 'add user floor'
floor = User.new(
  email: "floor@gmail.com",
  password: "password"
)
floor.remote_photo_url = "http://res.cloudinary.com/dnejf9j73/image/upload/v1520436403/qug4mgngihtwzk01sxd6.jpg"
# Saves new user
floor.save!

puts 'add restaurant user floor'
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

puts 'add restaurant user mark'
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

puts 'add restaurant user iris'
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
farm5= Farm.new(location:'Den Ilp 63, 1127 PE Den Ilp',farm_name:'Harvest Art',farmers_name:'Anton Heyboer')
farm5.save!
farm6= Farm.new(location:'Het Twiske',farm_name:'Our Little place',farmers_name:'Piet de Kleine')
farm6.save!
farm7= Farm.new(location:'Oosteinde, de Weiver',farm_name:'De Hooischuur',farmers_name:'Angela Tok')
farm7.save!
farm8= Farm.new(location:'Legmeer',farm_name:'Farmers Land',farmers_name:'John van de Akker')
farm8.save!
farm9= Farm.new(location:'Waverveen',farm_name:'The Big Barn',farmers_name:'Maik de Boer')
farm9.save!





puts 'Creating ingredients..test carrot,potato and Strawberry,etc.'
ingr = Ingredient.new( name: "Test carrot" ,
  description: "Mixed colors",
  main_category: "Fruits & Vegetables "  ,sku:"car-01",
  category: "Carrots"   ,
  price: 5,
  rating: "1",
  available_quantity: 500000,
  farm_id: farm1.id,
  price_type: "per unit1",
  remote_photo_url: cl_image_path("harshal-s-hirve-44494-unsplash.jpg") )

ingr.save!

ingr1 = Ingredient.new( name: "Test Potato"  ,
  description: "Mixed colors"   ,
  main_category: "Fruits & Vegetables " ,sku:"pot-01",
  category: "Potatoes" ,
  price: 500,
  rating: "1",
  available_quantity: 500000, farm_id: farm1.id  , price_type: "per unit1",
  remote_photo_url: cl_image_path("harshal-s-hirve-44494-unsplash.jpg") )

ingr1.save!

ingr2 = Ingredient.new( name: "Test Strawberry"  ,description: "Sweet sweet taste  and colors"  ,
  main_category: "Fruits & Vegetables ",sku:"straw-01" ,category: "Strawberry"   ,price: 500,  rating: "1",
  available_quantity: 500000, farm_id: farm1.id  ,price_type: "per kg",
  remote_photo_url: cl_image_path("harshal-s-hirve-44494-unsplash.jpg") )

ingr2.save!

puts "Finished, yeah!"
