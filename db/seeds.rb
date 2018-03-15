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

piet = Farm.new(
  location: "Overhoeksplein 2, Amsterdam",
  farm_name: "Boerderij Nooitgenoeg",
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
  remote_farm_photo_url: cl_image_path("farm-franciscus2.jpg"),
  farmer_email: 'franciscus.de.groot@gmail.com',
  description: "Description: needs attention :).")
franciscus.save!

bert = Farm.new(
  location: 'Grevelingen 12, Uithoorn',
  farm_name: 'De Witte Boerderij',
  farmers_name: 'Bert Spruitjes',
  remote_avatar_photo_url: cl_image_path("bert-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-bert2.jpg"),
  farmer_email: "bert.spruitjes@gmail.com",
  description: 'This farm is a biological farm. We have horses on the farm as well. We treat our plants with love and only harvest them when they are ready to shine. You are always welcome to see this for yourself.
  We make our own cheeses. Also, we produce our own sausages. They are very popular. Feel free to contact us, to share ideas or just for a cup of coffee. This farm is a biological farm. We have horses on the farm as well.
  We treat our plants with love and only harvest them when they are ready to shine. You are always welcome to see this for yourself. We make our own cheeses. Also, we produce our own sausages. They are very popular. Feel free to contact us, to share ideas or just for a cup of coffee. They are very popular. Feel free to contact us, to share ideas or just for a cup of coffee.')
bert.save!

annelies = Farm.new(
  location: 'Burgemeester Peereboomweg 200, Zuiderwoude',
  farm_name: 'de Kas',
  farmers_name: 'Annelies de Jong',
  remote_avatar_photo_url: cl_image_path("annelies-squared2.jpg"),
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
  description: "Our Farm is located in the Weiver in the watery Zaanstreek, me and my family of six grow Fruits, Vegetables Grains and we breed Quails and Turkeys, mainly Eggs and Poultry. We also can provide hay bales on request.  All seasons you can find us mostly outdoors. Our farm is open for visits - please contact us beforehand, see below our contact information. We are happy to show you around  In spring it is really nice to visit our blossoming cherry orchard. in summer in our strawberry fields and harvest your own. In autumn we always organize a big harvest festival. It is also possible to organize parties, outside-dinners or weddings on our farm ground. We host guests from time-to-time welcome to our Bed & Farmers Breakfast.")
angela.save!

john = Farm.new(
  location: 'Ruit 2, Uithoorn',
  farm_name: 'Farmers Land',
  farmers_name: 'John van de Akker',
  remote_avatar_photo_url: cl_image_path("john-squared.jpg"),
  remote_farm_photo_url: cl_image_path("farm-john.jpg"),
  farmer_email: 'john.van.de.akker@gmail.com',
  description: "We are the family van de Akker, Located in Uithoorn, just beneath Amsterdam, we are specialized in grains, like rye, we make our own cheese, fresh cheese and old farmers cheese. We have a big orchard, where our cows and goats can run freely.  Every second summer we grow strawberries and blueberries on our fields. In the rare case of spare time, we like to ride our horse and carriage, which my grandfather used long time ago, and have nice sunday afternoon trips. Once every while we  take part in the horse and carriage competitions, Our whole family enjoyes it to dress up in authentic Dutch clothing and wooden shoes than. Our farm is open for visits - please contact us beforehand, see below our contact information. We are happy to show you around.")
john.save!


puts 'Creating ingredients..'


ingr = Ingredient.new(name:'Carrots',description:'Orange carrots, fresh from the land. The carrot (Daucus carota subsp. sativus) is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist. Carrots are a domesticated form of the wild carrot, Daucus carota, native to Europe and southwestern Asia.',main_category:'Fruit & Vegetables',category:'Carrots',price:2,rating:5,sku:'1',farm_id:piet.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('harshal-s-hirve-44494-unsplash.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Dried Chickpeas',description:'chickpeas dried Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Grains & Legumes',category:'Legumes',price:3,rating:4,sku:'3',farm_id:franciscus.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-273838.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Steak',description:'Fresh Steak  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Meat',category:'Beef',price:6,rating:3,sku:'5',farm_id:bert.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-112781.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Chicken Eggs',description:'Wheat  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Dairy & Eggs',category:'Eggs',price:2,rating:2,sku:'6',farm_id:annelies.id,  available_quantity:20,price_type:'Dose(20)',  remote_photo_url: cl_image_path('Metal-easter-eggs-basket.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Wheat grains',description:'Wheat grains Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Grains & Legumes',category:'Grains',price:2,rating:4,sku:'7',farm_id:anton.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Food-grains-bread-wheat-cereals-41959.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Kale',description:'Kale lorem ipsum  and so on ',main_category:'Fruit & Vegetables',category:'Vegetables',price:0.5,rating:5,sku:'8',farm_id:hannes.id,  available_quantity:40,price_type:'kg',  remote_photo_url: cl_image_path('Kale-vegetables-brassica-oleracea-var-sabellica-l-51372.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Sausages',description:'Old farmers cheese matured for  14 months  at our farm,  made from raw milk. Tast is sweet sour. Nice for cheese desserts but all other combinations are perfect.',main_category:'Meat',category:'Porc',price:8,rating:4,sku:'9',farm_id:angela.id,  available_quantity:40,price_type:'Set(10)',  remote_photo_url: cl_image_path('meat-fridge-food-sausage-84267.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Old Farmers Cheese',description:'Old farmers cheese matured for  14 months  at our farm,  made from raw milk. Tast is sweet sour. Nice for cheese desserts but all other combinations are perfect.',main_category:'Dairy & Eggs',category:'Cheese',price:17,rating:3,sku:'10',farm_id:john.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-277276.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Potatoes',description:'all potatoes',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:4,sku:'11',farm_id:piet.id,  available_quantity:40,price_type:'kg',  remote_photo_url: cl_image_path('Potatoes-vegetables-erdfrucht-bio-144248.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Corn',description:'Corn lorem ipsum lorem loriadad',main_category:'Grains & Legumes',category:'Grains',price:3,rating:1,sku:'12',farm_id:franciscus.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-206653.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Smoked Bacon',description:'Speck ',main_category:'Meat',category:'Porc',price:10,rating:5,sku:'13',farm_id:bert.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('Pexels-photo-306799.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Cow-milk',description:'Fresh raw cowmilk',main_category:'Dairy & Eggs',category:'Milk',price:2,rating:4,sku:'14',farm_id:annelies.id,  available_quantity:30,price_type:'liters',  remote_photo_url: cl_image_path('Pexels-photo-248337.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Fresh Yoghurt',description:'The best Goat’s milk yoghurt.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ultrices eros vel augue vulputate, nec. ',main_category:'Dairy & Eggs',category:'Yoghurt',price:2,rating:3,sku:'15',farm_id:anton.id,  available_quantity:30,price_type:'liters',  remote_photo_url: cl_image_path('Pexels-photo-373882.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Cabbage',description:'Cabbage cabbage lorem ipusm ',main_category:'Fruit & Vegetables',category:'Vegetables',price:2,rating:2,sku:'16',farm_id:hannes.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('Cabbage-vegetable-power-green.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Strawberries',description:'Tasty Sweet sun-ripened red strawberries, fresh from the land. Like the dutch call them zomer-koninkjes, bring the summer into your restaurant with these little highlighting fruits!',main_category:'Fruit & Vegetables',category:'Berries',price:10,rating:5,sku:'17',farm_id:angela.id,  available_quantity:50,price_type:'kg',  remote_photo_url: cl_image_path('seoyytrlnsd9wuxz5cyv.png'))
ingr.save!
ingr = Ingredient.new(name:'Apples',description:'Last autumn we had a very rich harvest of red malus apples,  Very very  juicy, fresh with a sour flowery aftertaste. Nice with ginger, salty dishes, salads or for cakes.',main_category:'Fruit & Vegetables',category:'Apples',price:4,rating:4,sku:'18',farm_id:john.id,  available_quantity:60,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-635705.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Pear',description:'',main_category:'Fruit & Vegetables',category:'Pears',price:3,rating:3,sku:'19',farm_id:piet.id,  available_quantity:60,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-568471_1.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Pepper',description:'',main_category:'Fruit & Vegetables',category:'vegetables',price:3,rating:5,sku:'20',farm_id:franciscus.id,  available_quantity:100,price_type:'kg',  remote_photo_url: cl_image_path('pepper-and-vegetables-3-1322872-1278x855.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Chicken',description:'',main_category:'Meat',category:'poultry',price:8,rating:4,sku:'21',farm_id:bert.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('pexels-photo-616354.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Zucchini',description:'',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:3,sku:'22',farm_id:annelies.id,  available_quantity:80,price_type:'kg',  remote_photo_url: cl_image_path('italian-zucchine-1562358.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Beets',description:'',main_category:'Fruit & Vegetables',category:'Vegetables',price:3,rating:5,sku:'23',farm_id:anton.id,  available_quantity:56,price_type:'kg',  remote_photo_url: cl_image_path('beets-for-sale-2-1326248-1280x960.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Green Peas',description:'',main_category:'Grains & Legumes',category:'Peas',price:3.5,rating:4,sku:'24',farm_id:hannes.id,  available_quantity:40,price_type:'kg',  remote_photo_url: cl_image_path('peas-in-a-pod-1574302-1279x889.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Quail Eggs',description:'Nice Quail eggs, eastern is right around the corner, so why not choose differently for ones,  Nice eggs can be cooked  and eaten in scale. Very nice in salads, as amuses. ',main_category:'Dairy & Eggs',category:'Eggs',price:4,rating:3,sku:'25',farm_id:angela.id,  available_quantity:10,price_type:'Dose(20)',  remote_photo_url: cl_image_path('pexels-photo-810320.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Fresh Cheese',description:'Homemade white creamy fresh cheese,very tasty, can be used in sweet and salty dishes, especially with union, garlic and a whole lot of herbs.',main_category:'Dairy & Eggs',category:'Cheese',price:5,rating:5,sku:'26',farm_id:john.id,  available_quantity:10,price_type:'kg',  remote_photo_url: cl_image_path('fresh-cheese-1516657.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Spare-ribs',description:'',main_category:'Meat',category:'Porc',price:18,rating:4,sku:'27',farm_id:piet.id,  available_quantity:60,price_type:'kg',  remote_photo_url: cl_image_path('silhouette-of-summer-garden-bbq-isolated-against-fire-1632139-1278x800.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Blackberry Jam',description:'Homemade blackberry jam, harvest of summer 2017,  taste the sweet and sour. Nice with cheese or  salads or meat.',main_category:'Fruit & Vegetables',category:'confituur',price:2,rating:3,sku:'28',farm_id:franciscus.id,  available_quantity:15,price_type:'jar',  remote_photo_url: cl_image_path('jam-jars-1257491-1280x960.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Haricots',description:'',main_category:'Fruit & Vegetables',category:'Beans',price:3.5,rating:5,sku:'29',farm_id:bert.id,  available_quantity:25,price_type:'kg',  remote_photo_url: cl_image_path('fruits-and-veggies-1191769-1280x960.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Tomatoes',description:'',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:4,sku:'30',farm_id:annelies.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('tomatoes-1323819-1279x852.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Parsnip',description:'Parsnips, rich taste, fresly harvested. For soups, stews…',main_category:'Fruit & Vegetables',category:'Vegetables',price:4,rating:3,sku:'31',farm_id:anton.id,  available_quantity:30,price_type:'kg',  remote_photo_url: cl_image_path('healthy-white-parsnip-with-green-beans-isolated-1632298-1279x853.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Minced Meat',description:'',main_category:'Meat',category:'Beef',price:18,rating:5,sku:'32',farm_id:hannes.id,  available_quantity:20,price_type:'kg',  remote_photo_url: cl_image_path('minced-meat-2-1547786-1279x902.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Quail',description:'Fresh Quails, combine with almost any dish, nice and soft poultry, strong  savagy taste, almost need no seasoning. Grilled, stuffed or in soups very nice. ',main_category:'Meat',category:'poultry',price:18,rating:4,sku:'33',farm_id:angela.id,  available_quantity:10,price_type:'kg',  remote_photo_url: cl_image_path('quail-2-1312897-1279x913.jpg'))
ingr.save!
ingr = Ingredient.new(name:'Rye',description:'Rye -Secale cereale-  a grass grown extensively as a grain, a cover crop and a forage crop. It is a member of the wheat tribe and is closely related to barley . Nice to make porridge. ',main_category:'Grains & Legumes',category:'Grains',price:4,rating:3,sku:'34',farm_id:john.id,  available_quantity:25,price_type:'kg',  remote_photo_url: cl_image_path('wheat-in-summer-1566168-1279x913.jpg'))
ingr.save!


puts "Finished, yeah!"
