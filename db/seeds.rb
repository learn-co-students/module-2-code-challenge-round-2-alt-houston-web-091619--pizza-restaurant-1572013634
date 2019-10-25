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
 
r1 = Restaurant.create(name: "Sottocasa NYC",address: "298 Atlantic Ave, Brooklyn, NY 11201")
r2 = Restaurant.create(name: "PizzArte",address: "69 W 55th St, New York, NY 10019")
r3 = Restaurant.create(name: "San Matteo NYC",address: "1559 2nd Ave, New York, NY 10028")

Pizza.create(name:"Cheese", ingredients:"Cheese", restaurant_id:r1.id)
Pizza.create(name:"Pepperoni", ingredients:"Pepperoni and Cheese", restaurant_id:r2.id)
Pizza.create(name:"Spinach", ingredients:"Spinach and Cheese", restaurant_id:r3.id)
Pizza.create(name:"Mushroom", ingredients:"Mushrooms and Cheese", restaurant_id:r2.id)
Pizza.create(name:"Ham", ingredients:"Ham and Cheese", restaurant_id:r2.id)
puts "Time to make the pizza!"