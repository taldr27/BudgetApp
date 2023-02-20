# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: 'asd', email: 'asd@yopmail.com', password: '123123')
Category.create(user_id: 1, name: 'asd', icon: 'sasd')
Entity.create(name: '1', amount: 12, user_id: 1, category_id: 1)