# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database"
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  {
    name: 'Something & Something',
    address: '84 Finsbury Park',
    category: 'belgian',
    phone_number: '07 08 36 52 21'
  },
  {
    name: 'Bufi',
    address: '70 Hackney Road',
    category: 'italian',
    phone_number: '08 35 21 98 31'
  },
  {
    name: 'Beijing Dumpling',
    address: '123 Leicester Square',
    category: 'chinese',
    phone_number: '03 78 21 09 43'
  },
  {
    name: 'Oh la la!',
    address: '9 Soho',
    category: 'french',
    phone_number: '07 03 43 43 89'
  },
  {
    name: 'Maki Maki',
    address: '45 English Road',
    category: 'japanese',
    phone_number: '07 90 34 75 12'
  }
]

# use the ! to force it to do it
Restaurant.create!(restaurants)
puts "Finished, go on and test"



