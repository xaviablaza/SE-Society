# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development? # If it is in development mode...
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')
  UserDetails.create!(zipcode: '12345', address: 'Somewhere in the USA', profession: 'Bored Engineer')
  UserDetails.create!(zipcode: '67890', address: 'Slack', profession: 'Master of Computer Science')
  UserDetails.create!(zipcode: '66666', address: 'Hell', profession: 'Lord of Hell')
  UserDetails.create!(zipcode: '01001' address: 'In a Computer', profession: 'Sentient AI')
end
