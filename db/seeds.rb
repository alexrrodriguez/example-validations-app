# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(first_name: "John", last_name: "Stockton", email: "jstock@gmail.com")

user = User.create(first_name: "Charles", last_name: "Barkely", email: "cbark@gmail.com")

user = User.create(first_name: "Scottie", last_name: "Pippen", email: "spip@gmail.com")
