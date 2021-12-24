# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Alberto",surname: "Soto", mail: "albertomj@me.com", 
  age: 24,username: "admin_main", password_digest: BCrypt::Password.create("sota123"), profile: 1)

user2 = User.create(name: "Luis",surname: "Esteves", mail: "luis@esteves.com", 
  age: 24,username: "estevesluis", password_digest: BCrypt::Password.create("luis1234"), profile: 2)