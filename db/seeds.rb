# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Farm.destroy_all

# floor = Farm.create!(farm_name: "Floor's Farm", farmers_name: "Floor")
# carrot = Ingredient.create!(name: "carrot", farm_id: floor.id)
# potato = Ingredient.create!(name: "potato", farm_id: floor.id)

farm1= Farm.new(location: "test"  ,farm_name: "farm 1" ,farmers_name: "Piet de Boer", description: "Absolutely Super Nice Farm")
farm1.save!

ingr = Ingredient.new( name: "testcarrot"  ,description: "Mixed colors"   ,
  main_category: "Fruits & Vegetables "  ,category: "Carrots"   ,price: 500,  rating: "1",
  available_quantity: 500000, farm_id: farm1.id  ,price_type: "unit1"   )

ingr.save!

ingr1 = Ingredient.new( name: "testpotato"  ,description: "Mixed colors"   ,
  main_category: "Fruits & Vegetables "   ,category: "Potatoes"   ,price: 500,  rating: "1",
  available_quantity: 500000, farm_id: farm1.id  ,price_type: "unit1"   )

ingr1.save!

ingr2 = Ingredient.new( name: "test strawnberry"  ,description: "Mixed colors"   ,
  main_category: "Fruits & Vegetables "   ,category: "Strawberry"   ,price: 500,  rating: "1",
  available_quantity: 500000, farm_id: farm1.id  ,price_type: "unit1"   )

ingr2.save!

