# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  flat = Flat.new(
    name:    "#{Faker::FunnyName.two_word_name}'s Home",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Quote.yoda,
    price_per_night: Faker::Number.between(from: 50, to: 1000),
    number_of_guests: Faker::Number.between(from: 1, to: 15)
  )
  flat.save!
end
