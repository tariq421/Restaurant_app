# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Party.create({table_name: "Table One", paid: true})
Party.create({table_name: "Table Two", paid: false})
Party.create({table_name: "Table Three", paid: true})
Party.create({table_name: "Table Four", paid: true})
Party.create({table_name: "Table Five", paid: true})
Party.create({table_name: "Table Six", paid: true})


Menu.create({name:"Steak", beverage:"Water", price: 15})
Menu.create({name:"Cheeseburger", beverage:"Sprite", price: 10})
Menu.create({name:"Chicken burger", beverage:"Pepsi", price: 10})
Menu.create({name:"Pizza", beverage:"Ice-Tea", price: 4})
Menu.create({name:"Lamb Gyro", beverage:"water", price: 6})
Menu.create({name:"Chicken Gyro", beverage:"water", price: 6})
Menu.create({name:"Lamb w/rice", beverage:"Coke", price: 8})
Menu.create({name:"Chicken w/rice", beverage:"Selzter", price: 8})
Menu.create({name:"Salad", beverage:"water", price: 7})
