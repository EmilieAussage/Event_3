# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

nb_user = 20


nb_user.times do
  fname = Faker::Name.first_name
  User.create(
      email: fname+'@yopmail.com',
      first_name:  fname,
      password: 'azerty',
      last_name: Faker::Name.last_name,
      description: Faker::Lorem.paragraph_by_chars(number: 200, supplemental: false))
  puts "Seeding of User nb #{x}"end


