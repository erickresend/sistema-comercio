# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |i|
  client_name = Faker::Name.name
  client_email = Faker::Internet.email
  client_phone = Faker::PhoneNumber.phone_number
  client_address = Faker::Address.full_address
  Client.create(name: client_name, email: client_email, phone: client_phone, address: client_address)
end

50.times do |i|
  product_code = Faker::Number.number(digits: 5)
  product_name = Faker::Name.name
  product_price = Faker::Number.number(digits: 2)
  product_quantity = Faker::Number.between(from: 1, to: 5)
  product_category = Faker::String.random(length: 5..8)
  Product.create(code: product_code, name: product_name, price: product_price, quantity: product_quantity, category: product_category)
end
