# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  user = User.create!(first_name: Faker::StarWars.planet, last_name: Faker::StarWars.droid)
end

20.times do
  pin = Pin.create!(url: Faker::Internet.url, user_id: Faker::Number.between(1, 10))
end

30.times do
  comment = Comment.create!(content: Faker::StarWars.quote, user_id: Faker::Number.between(1, 10), pin_id: Faker::Number.between(1, 20))
end
