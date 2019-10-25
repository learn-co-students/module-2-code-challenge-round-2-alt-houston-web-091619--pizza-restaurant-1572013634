# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Restaurant.destroy_all
Pizza.destroy_all
 
 Restaurant.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028"
}])


Pizza.create!([{
  name: "yo momma",
  ingredients: "pepper",
  restaurant_id: Restaurant.all.first.id
},
{
  name: "yo daddy",
  ingredients: "food",
  restaurant_id: Restaurant.all.second.id
},
{
  name: "yo sister",
  ingredients: "make me food",
  restaurant_id: Restaurant.all.third.id
}])



