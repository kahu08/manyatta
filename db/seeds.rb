# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  [true, "testuser", 0700000000, "testuser@gmail.com", "testuser", "testuser"]
]

users.each do |admin, name, telephone, email, password, confirm|
  User.create!(admin: admin, name: name, telephone: telephone, email: email, password: password, password_confirmation: confirm)
end
