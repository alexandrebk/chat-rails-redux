# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "delete table Messages"
Message.destroy_all

puts "delete table Users"
User.destroy_all

puts "delete table Channels"
Channel.destroy_all


puts "Create some channels (general, paris, react for instance)"
general = Channel.create!(
  name: "general"
)
paris = Channel.create!(
  name: "paris"
)
react = Channel.create!(
  name: "react"
)

puts "Create some users (email / password)"
alex = User.create!(
  email: "alex@react.fr",
  password: "aaaaaa"
)
mat = User.create!(
  email: "mat@react.fr",
  password: "aaaaaa"
)
max = User.create!(
  email: "max@react.fr",
  password: "aaaaaa"
)

puts "Create some messages in several channels"
Message.create!(
  user: alex,
  channel: general,
  content: "Welcome Home baby"
)
Message.create!(
  user: mat,
  channel: paris,
  content: "Welcome Home baby"
)
Message.create!(
  user: max,
  channel: react,
  content: "Welcome Home baby"
)

