# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: "camelia@example.com", password: "123456")
post = Post.create(title: "Help with shopping", content: "Elderly woman needs help to buy groceries", date: Date.today, completed: false, user: User.first)
