# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Dog.destroy_all
Weight.destroy.all

user1 = User.create(name: "Natalie", email: "nat.galligan@gmail.com", password: "123")

dog1 = Dog.create(user_id: 1, name: "Binky")

weight1 = Weight.create(dog_id: 1, amount: 40, date: '2020-02-20')