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



# user1 = User.create(first_name: "John", last_name: "Montagu", email: "helpremail@gmail.com", password: 123456, address: "Herstmonceux Castle", bio: "Drinking and lust: No man can match me in these things. I am the god of tits and wine.",latitude: nil, longitude: nil )
# user2 = User.create!(first_name: "Bobby", last_name: "Williams", email: "bobby@gmail.com", password: 123456, address: "wimbledon london", bio: "Drinking and lust: No man can match me in these things. Lots of football.", latitude: nil, longitude: nil )
# user3 = User.create!(first_name: "Jamie", last_name: "Oliver", email: "jamie@gmail.com", password: 123456, address: "Hoxton, london", bio: "Love cooking and helping people.", latitude: nil, longitude: nil )
# user4 = User.create!(first_name: "Emma", last_name: "Anderson", email: "emma@gmail.com", password: 123456, address: "Richmond, london", bio: "Love going for long walks with my dog and helping people.", latitude: nil, longitude: nil )
# post0 = Post.create!(title: "drug pickup/ need some herbal 'medication' picked up", content: "its been snowing heavily and need some help to collect my herbal medication", user: user1, completed: false)
# Review.create!(content: "Speedy pickup and delivery, must've travelled at highperspeed", rating: 5, post: post0, user: user1)
# post1 = Post.create!(title: "Care required", content: "I need help changing my nappies", user: user1, completed: true)
# post2 = Post.create!(title: "Looking for companionship", content: "Can't wait to spend time with you", user: user2, completed: false)
# post3 = Post.create!(title: "Need help with curtains", content: "Please could someone help me hanging up my curtains, I am afraid I will fall and hurt myself.", user: user1, completed: false)
# post4 = Post.create!(title: "Need help with shopping", content: "Please could someone help me with my grocery shopping.", user: user3, completed: false)
# post5 = Post.create!(title: "Need help with my computer", content: "Please could someone help me with logging into my pc, it was working until this morning.", user: user3, completed: false)
# Bid.create!(post_id: post0.id, user_id: user2.id )
# Bid.create!(post_id: post0.id, user_id: user4.id )
# Bid.create!(post_id: post0.id, user_id: user3.id )
# Bid.create!(post_id: post1.id, user_id: user2.id )
# Bid.create!(post_id: post1.id, user_id: user3.id )
# Bid.create!(post_id: post1.id, user_id: user4.id )
# Bid.create!(post_id: post2.id, user_id: user1.id )
# Bid.create!(post_id: post2.id, user_id: user3.id )
# Bid.create!(post_id: post3.id, user_id: user4.id )
# Bid.create!(post_id: post4.id, user_id: user1.id )




# KEEP BELOW //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# file_fred = File.open("/Users/anthonypassler/Downloads/fred.jpg")

fred = User.create(first_name: "Fred", last_name: "Lombard", email: "fred@gmail.com", password: 123456, address: "87 Broadway, London, united kingdom", bio: "I like talking my dog for walks, and playing chess. I am 70 years old and am single living in a quiet borough of london." )
# fred.photo.attach(io: file_fred, filename: "fred.jpg", content_type: 'image/jpg')

# file_bobby = File.open("/Users/anthonypassler/Downloads/bobby.jpg")
bobby = User.create!(first_name: "Bobby", last_name: "Williams", email: "bobby@gmail.com", password: 123456, address: "60 Chester Road, London, united kingdom", bio: "I love me footy and a good pint of ale. I like meeting new people and having long conversations about life.")
# bobby.photo.attach(io: file_bobby, filename: "bobby.jpg", content_type: 'image/jpg')

# file_emma = File.open("/Users/anthonypassler/Downloads/emma.jpg")
emma = User.create!(first_name: "Emma", last_name: "Oliver", email: "emma@gmail.com", password: 123456, address: "342 King Street, london, united kingdom", bio: "Love cooking and helping people. I am a very sociable person, who loves meeting new people. Also enjoy long walks in the forest. ")
# emma.photo.attach(io: file_emma, filename: "emma.jpg", content_type: 'image/jpg')

# file_elizabeth = File.open("/Users/anthonypassler/Downloads/elizabeth.jpg")
elizabeth = User.create!(first_name: "Elizabeth", last_name: "Reagon", email: "elizabeth@gmail.com", password: 123456, address: "9858 Grove Road, london, united kingdom", bio: "I enjoy a good glass of wine and lots of laughter, also this netflix thing is amazing!")
# elizabeth.photo.attach(io: file_elizabeth, filename: "elizabeth.jpg", content_type: 'image/jpg')

# file_annie = File.open("/Users/anthonypassler/Downloads/annie.jpg")
annie = User.create!(first_name: "Annie", last_name: "Davids", email: "annie@gmail.com", password: 123456, address: "160 Mortlake Road, Richmond, United Kingdom", bio: "Very friendly and enjoy being around young people. Recently lost my husband, and have hip problems.")
# annie.photo.attach(io: file_annie, filename: "annie.jpg", content_type: 'image/jpg')

# file_matt = File.open("/Users/anthonypassler/Downloads/matt.jpg")
matt = User.create!(first_name: "Matt", last_name: "Hill", email: "matt@gmail.com", password: 123456, address: "165 Mortlake Road, Richmond, United Kingdom", bio: "Love helping out in my community and making it a better place to live.")
# matt.photo.attach(io: file_matt, filename: "matt.jpg", content_type: 'image/jpg')

post0 = Post.create!(title: "Please need help moving washine machine.", content: "My strength isn't what it used to be and would really appreciate if someone could help me move the wahing machine to my garage.", user: fred, completed: false)
post1 = Post.create!(title: "Garden help", content: "I need help just to trim down the hedge in my garden, I make a great ice tea for afterwards.", user: fred, completed: false)
post2 = Post.create!(title: "Looking for companionship", content: "Can't wait to spend time with you, just would like to have a nice long chat with someone about life.", user: bobby, completed: false)
post3 = Post.create!(title: "Need help with curtains", content: "Please could someone help me hanging up my curtains, I am afraid I will fall and hurt myself.", user: fred, completed: false)
post4 = Post.create!(title: "Need help with shopping", content: "Please could someone help me with my grocery shopping.", user: elizabeth, completed: false)
post5 = Post.create!(title: "Computer issues", content: "Please could someone help me with logging into my pc, it was working until this morning.", user: bobby, completed: false)
post6 = Post.create!(title: "Planting a tree for me", content: "Please could someone help me with planting a tree I bought this morning, I have all the tools just need help digging the hole.", user: elizabeth, completed: false)
post7 = Post.create!(title: "Vacuum my living room", content: "Please could someone help me with giving my lving area a quick vacuum, my cleaner is on holiday and my back isn't the best.", user: annie, completed: false)
post9 = Post.create!(title: "Change a few lightbulbs", content: "Hi, my living room is in the dark but I am too afraid of heights to change the lightbulbs myself! Thanks :)", user: annie, completed: true)
post10 = Post.create!(title: "Coffee table needs moving", content: "I'd like to make a little more space in the living room, would love someone to help me move a coffee table!", user: annie, completed: true)
post11 = Post.create!(title: "Test", content: "This shouldn't display anywhere, but if it does, yell at the dev team", user: bobby, completed: true)
post12 = Post.create!(title: "Test", content: "This shouldn't display anywhere, but if it does, yell at the dev team", user: bobby, completed: true)
post13 = Post.create!(title: "Test", content: "This shouldn't display anywhere, but if it does, yell at the dev team", user: fred, completed: true)
post14 = Post.create!(title: "Test", content: "This shouldn't display anywhere, but if it does, yell at the dev team", user: fred, completed: true)
post15 = Post.create!(title: "Test", content: "This shouldn't display anywhere, but if it does, yell at the dev team", user: bobby, completed: true)
post16 = Post.create!(title: "Test", content: "This shouldn't display anywhere, but if it does, yell at the dev team", user: emma, completed: true)
post17 = Post.create!(title: "Test", content: "This shouldn't display anywhere, but if it does, yell at the dev team", user: emma, completed: true)


Bid.create!(post_id: post0.id, user_id: matt.id )
Bid.create!(post_id: post0.id, user_id: emma.id )
Bid.create!(post_id: post0.id, user_id: fred.id )
Bid.create!(post_id: post1.id, user_id: bobby.id )
Bid.create!(post_id: post1.id, user_id: emma.id )
Bid.create!(post_id: post1.id, user_id: matt.id )
Bid.create!(post_id: post2.id, user_id: matt.id )
Bid.create!(post_id: post2.id, user_id: emma.id )
Bid.create!(post_id: post3.id, user_id: matt.id )
Bid.create!(post_id: post4.id, user_id: fred.id )
Bid.create!(post_id: post9.id, user_id: emma.id, approved: true )
Bid.create!(post_id: post10.id, user_id: emma.id, approved: true )
Bid.create!(post_id: post11.id, user_id: emma.id, approved: true )
Bid.create!(post_id: post12.id, user_id: matt.id, approved: true )
Bid.create!(post_id: post13.id, user_id: matt.id, approved: true )
Bid.create!(post_id: post14.id, user_id: elizabeth.id, approved: true )
Bid.create!(post_id: post15.id, user_id: fred.id, approved: true )
Bid.create!(post_id: post16.id, user_id: annie.id, approved: true )
Bid.create!(post_id: post17.id, user_id: bobby.id, approved: true )


Review.create!(content: "Wonderful! Emma was very friendly, incredibly helpful and showed up at the time she had set.", rating: 5, post_id: 9, user_id: annie.id, bid_id: 11)
Review.create!(content: "Emma is a kind, friendly soul with strong arms!", rating: 5, post_id: 10, user_id: annie.id, bid_id: 12)
Review.create!(content: "A punctual and kind young lady with good conversation. Truly happy to have met her", rating: 5, post_id: 11, user_id: bobby.id, bid_id: 13)
Review.create!(content: "Nice and friendly guy, but he scratched my hardwood floor while moving my table.", rating: 3, post_id: 12, user_id: bobby.id, bid_id: 14)
Review.create!(content: "Matt helped me with some admin. He was very kind, had great conversation (but didn't waste time) and most importantly was incredibly helpful! Thank you Matt!", rating: 5, post_id: 13, user_id: fred.id, bid_id: 15)
Review.create!(content: "Elizabeth showed me how to repair my sheets and socks, she's a very sweet lady and I learned a lot - my sheets are finally mended! Thanks Elizabeth!", rating: 5, post_id: 14, user_id: fred.id, bid_id: 16)
Review.create!(content: "Had a great time. Funny guy! He did arrive 2 hours late without letting me know beforehand though.", rating: 3, post_id: 15, user_id: emma.id, bid_id: 17)
Review.create!(content: "Annie gave me a lift, she was punctual and had great conversation! Hope to see her around again soon.", rating: 5, post_id: 16, user_id: emma.id, bid_id: 18)
Review.create!(content: "I felt like my help was taken for granted. Maybe he was having a bad day, but still.", rating: 2, post_id: 17, user_id: emma.id, bid_id: 19)




# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Chatroom.create! name: 'general'
# User.create! email: 'hello@world.com', password: "123456", nickname: "heaven"
# User.create! email: 'bonjour@world.com', password: "123456", nickname: "hell"
#for date use created_at eg for posts

