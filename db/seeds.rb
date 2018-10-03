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

Drink.create! id: 1, name: "Banana", price: 0.49, active: true
Drink.create! id: 2, name: "Apple", price: 0.29, active: true
Drink.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true

OrderStatus.create! id: 1, name: "Pending"
OrderStatus.create! id: 2, name: "Ordered"
OrderStatus.create! id: 3, name: "Done"

@new_order = Order.create(order_status_id: 1)

# OrderItem.create(drink_id: 1, order_id: @new_order.id)
# OrderItem.create(drink_id: 2, order_id: @new_order.id)
# OrderItem.create(drink_id: 3, order_id: @new_order.id)
