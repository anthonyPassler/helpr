# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Post.destroy_all
User.destroy_all
Bid.destroy_all
user = User.create!(first_name: "John Montagu, Third Earl of Salisbury", last_name: "Baron Salisbury", email: "helpremail@gmail.com", password: 123456, address: "Herstmonceux Castle", bio: "Drinking and lust: No man can match me in these things. I am the god of tits and wine.", latitude: nil, longitude: nil )
post = Post.create!(title: "drug pickup/ need some herbal 'medication' picked up", content: "its been snowing heavily and need some help to collect my herbal medication", user: user, completed: false)
Review.create!(content: "Speedy pickup and delivery, must've travelled at highperspeed", rating: 5, post: post, user: user)
Bid.create!(post: post, user: user, approved: false)
Bid.create!(post: post, user: user, approved: true)
Post.create!(title: "Care required", content: "I need help changing my nappies", user: user, completed: true)
Post.create!(title: "Looking for companionship", content: "Can't wait to spend time with you", user: user, completed: false)
#for date use created_at eg for posts

