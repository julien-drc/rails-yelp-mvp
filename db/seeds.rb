# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
goiko = { name: 'Goiko', address: "11 rue du colonel", category: 'french' }

perousse = { name: "Perousse", address: "3 rue tout court", category: "belgian" }

yaki = { name: "Yaki", address: "34 rue proost", category: "japanese" }

canton = { name: "Canton", address: "35 rue proost", category: "chinese" }

maaah = { name: "Maaah", address: "33 rue proost", category: "italian"}

[ goiko, perousse, yaki, canton, maaah ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
