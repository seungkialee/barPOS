# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


OrderItem.destroy_all
Order.destroy_all
OrderStatus.destroy_all
Drink.destroy_all

Drink.create! id: 1, category: "Beer", name: "Sapporo",  img_url: "https://medlineplus.gov/images/Alcohol.jpg", price: 4.00, active: true
Drink.create! id: 2, category: "Beer", name: "Heineken",  img_url: "https://medlineplus.gov/images/Alcohol.jpg", price: 9.00, active: true
Drink.create! id: 3, category: "Beer", name: "Bitchin",  img_url: "https://medlineplus.gov/images/Alcohol.jpg", price: 7.00, active: true

Drink.create! id: 4, category: "Liquor", name: "Johnny Walker: Black",  img_url: "https://cdn1.masterofmalt.com/whiskies/p-2813/johnnie-walker-black-label-12-year-old-whisky.jpg?ss=2.0", price: 120.00, active: true
Drink.create! id: 5, category: "Liquor", name: "The MaCallan: Sherry Oak 12YR",  img_url: "https://www.themacallan.com/media/1018/sherry-oak-bottle.png", price: 150.00, active: true
Drink.create! id: 6, category: "Liquor", name: "Titos Handmade Vodka",  img_url: "http://dcmzfk78s4reh.cloudfront.net/1511583828767.jpg", price: 100.00, active: true

Drink.create! id: 7, category: "Wine", name: "ARMAND DE BRIGNAC BRUT GOLD CHAMPAGNE",  img_url: "https://cdn2.bigcommerce.com/server2800/a04d0/products/13119/images/13917/armand-de-brignac-brut-gold-champagne-nv-15l__33997.1504705785.1280.1280.jpg?c=2", price: 15999.00, active: true
Drink.create! id: 8, category: "Wine", name: "Chardonnay by Andy",  img_url: "http://www.menageatroiswines.com/sites/default/files/Chardonnay.png", price: 99.00, active: true
Drink.create! id: 9, category: "Wine", name: "Cabernet by Jordan",  img_url: "https://www.totalwine.com/media/sys_master/twmmedia/hcd/h5f/10301736091678.png", price: 1.00, active: true

Drink.create! id: 10, category: "Cocktail", name: "Pure Strawberry",  img_url: "https://2.bp.blogspot.com/-pkIs8VKylEU/WpnC7Wr1AUI/AAAAAAAAAvc/xWiBmPGu4TwXmmjE4-sO8JMx47j-6NwWQCEwYBhgL/s1600/IMG_1418%2B2.JPG", price: 4.00, active: true
Drink.create! id: 11, category: "Cocktail", name: "Lychee Mango",  img_url: "https://4.bp.blogspot.com/-ks6pA5bYQDA/WpnC5dK0SLI/AAAAAAAAAvc/w3QprSuTdgMh0wzvMiL5rgsu9krHLw5dACEwYBhgL/s1600/IMG_1397.JPG", price: 9.00, active: true
Drink.create! id: 12, category: "Cocktail", name: "Cutetini",  img_url: "https://4.bp.blogspot.com/-ks6pA5bYQDA/WpnC5dK0SLI/AAAAAAAAAvc/w3QprSuTdgMh0wzvMiL5rgsu9krHLw5dACEwYBhgL/s1600/IMG_1397.JPG", price: 7.00, active: true


OrderStatus.create! id: 1, name: "Pending"
OrderStatus.create! id: 2, name: "Ordered"
OrderStatus.create! id: 3, name: "Done"

# @new_order = Order.create(order_status_id: 1)

# OrderItem.create(drink_id: 1, order_id: @new_order.id)
# OrderItem.create(drink_id: 2, order_id: @new_order.id)
# OrderItem.create(drink_id: 3, order_id: @new_order.id)
