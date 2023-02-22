require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Creating Restaurants..."
5.times do
  name = Faker::Restaurant.name
  category = %w(Chinese Italian Japanese French Belgian).sample
  address = Faker::Address.city
  phone_number = Faker::PhoneNumber.phone_number
  restaurant = Restaurant.new(name: name, address: address, category: category, phone_number: phone_number)
  restaurant.save!
end
puts "Done!"
