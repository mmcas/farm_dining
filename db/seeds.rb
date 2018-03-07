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

restaurant2= Restaurant.new(  location: "Bos en Lommer",  user: mads)
restaurant2.save!

puts 'Creating farm 1'
farm1= Farm.new(  location: "test"  ,farm_name: "farm 1" ,farmers_name: "Piet de Boer")
farm1.save!

puts 'Creating ingredients..test carrot,potato and Strawberry,etc.'
ingr = Ingredient.new( name: "Test carrot"  ,
  description: "Mixed colors",
  main_category: "Fruits & Vegetables "  ,
  category: "Carrots"   ,
  price: 5,
  rating: "1",
  available_quantity: 500000,
  farm_id: farm1.id,
  price_type: "per unit1"  )

ingr.save!

ingr1 = Ingredient.new( name: "Test Potato"  ,
  description: "Mixed colors"   ,
  main_category: "Fruits & Vegetables "   ,
  category: "Potatoes" ,
  price: 500,
  rating: "1",
  available_quantity: 500000, farm_id: farm1.id  , price_type: "per unit1"  )

ingr1.save!

ingr2 = Ingredient.new( name: "Test Strawberry"  ,description: "Sweet sweet taste  and colors"  ,
  main_category: "Fruits & Vegetables "   ,category: "Strawberry"   ,price: 500,  rating: "1",
  available_quantity: 500000, farm_id: farm1.id  ,price_type: "per kg"  )

ingr2.save!

puts "Finished, yeah!"

