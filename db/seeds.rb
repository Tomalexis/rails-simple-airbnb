# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Small flat Paris',
  address: '7 rue de maubeuge Paris',
  description: 'A small parisian flat. It is ridiculously small, I mean WTF.',
  price_per_night: 95,
  number_of_guests: 1
)

Flat.create!(
  name: 'Super cramped up flat Hong-Kong',
  address: '1 Toto street Hong-Kong',
  description: 'A flat in Hong-Kong that is super pricey, super small and smells funny. You are living the dream.',
  price_per_night: 155,
  number_of_guests: 2
)

Flat.create!(
  name: 'Gigantic posh flat New-York',
  address: '5 Big Street New-York',
  description: 'A flat so big and so fancy, you can impress your future ex boyfriend.',
  price_per_night: 300,
  number_of_guests: 10
)

puts 'Finished !'
