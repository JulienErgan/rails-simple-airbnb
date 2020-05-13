# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning the database...'
Flat.destroy_all

puts 'Creating flats...'

20.times do
  Flat.create!(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    description:Faker::Company.catch_phrase,
    price_per_night:rand(50.300),
    number_of_guests: rand(0.10)
  )
end

puts "Finished creating #{Flat.count} flats!"
