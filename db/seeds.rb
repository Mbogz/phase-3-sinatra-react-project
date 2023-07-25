puts "🌱 Seeding spices..."

# Seed your database here
Joe = User.create(name: "Joe",email: "Joe004@gail.com")
Jeff = User.create(name: "Jeff",email: "jeffmbogo004@gmail.com")
Lyna User.create(name: "Lyna",email: "lynathika@gmail.com")


order1 = Order.create(user_id:1,status: "pending")
order2 = Ordeer.create(user_id:2,status: "complete")


product1 = Product.create(order_id:1,name: "Body wave#1"quantity:10,price:20000.00)
product2 = Product.create(order_id:2,name "Dummy",quantity:1,price:1000.00)

puts "✅ Done seeding!"
