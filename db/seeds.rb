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
user = User.create!(first_name: "John", last_name: "Montagu", email: "helpremail@gmail.com", password: 123456, address: "Herstmonceux Castle", bio: "Drinking and lust: No man can match me in these things. I am the god of tits and wine.", latitude: nil, longitude: nil )
user = User.create!(first_name: "Bobby", last_name: "Williams", email: "bobby@gmail.com", password: 123456, address: "wimbledon london", bio: "Drinking and lust: No man can match me in these things. Lots of football.", latitude: nil, longitude: nil )
post = Post.create!(title: "drug pickup/ need some herbal 'medication' picked up", content: "its been snowing heavily and need some help to collect my herbal medication", user: user, completed: false)
Review.create!(content: "Speedy pickup and delivery, must've travelled at highperspeed", rating: 5, post: post, user: user)
Post.create!(title: "Care required", content: "I need help changing my nappies", user: user, completed: true)
Post.create!(title: "Looking for companionship", content: "Can't wait to spend time with you", user: user, completed: false)
Post.create!(title: "Need help with curtains", content: "Please could someone help me hanging up my curtains, I am afraid I will fall and hurt myself.", user: user, completed: false)
Post.create!(title: "Need help with shopping", content: "Please could someone help me with my grocery shopping.", user: user, completed: false)
Post.create!(title: "Need help with my computer", content: "Please could someone help me with logging into my pc, it was working until this morning.", user: user, completed: false)

Chatroom.create! name: 'general'
User.create! email: 'hello@world.com', password: "123456", nickname: "heaven"
User.create! email: 'bonjour@world.com', password: "123456", nickname: "hell"
#for date use created_at eg for posts

