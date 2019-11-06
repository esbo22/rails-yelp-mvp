# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'hoom',
    address:      '9 Bound, Liby',
    phone_number:  '0296878696',
    category:     "french"
  },
  {
    name:         'shoomy',
    address:      '5 dary , lisbonne',
    phone_number:  '0296878690',
    category:     "french"
  },
  {
    name:         'Duduche',
    address:      '7 Bd Stain pigal, Paname',
    phone_number:  '0296878956',
    category:     "french"
  },
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '0296878656',
    category:     "french"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0296356768',
    category:     "chinese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
