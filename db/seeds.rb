# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts 'Creating 4 fake flats...'
4.times do
  flat = Flat.new(
    name: Faker::Lorem.sentence,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.between(from: 35, to: 250),
    number_of_guests: Faker::Number.between(from: 1, to: 12)
  )
  flat.save!
end
puts 'Finished!'
