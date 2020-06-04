puts "Cleaning up database"
Review.destroy_all
Post.destroy_all
User.destroy_all
Bid.destroy_all
puts "Cleaning complete"

# KEEP BELOW //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
puts "Starting Seed"

# dates
d1 = DateTime.new(2020, 6, 22)
d2 = DateTime.new(2020, 6, 15)
d3 = DateTime.new(2020, 6, 17)
d4 = DateTime.new(2020, 6, 25)
d5 = DateTime.new(2020, 6, 11)
d6 = DateTime.new(2020, 6, 19)
d7 = DateTime.new(2020, 6, 20)
d8 = DateTime.new(2020, 7, 2)
d9 = DateTime.new(2020, 6, 30)
d21 = DateTime.new(2020, 6, 18)
d22 = DateTime.new(2020, 6, 21)
d23 = DateTime.new(2020, 6, 14)
d24 = DateTime.new(2020, 6, 7)
d25 = DateTime.new(2020, 6, 6)
# old dates
d10 = DateTime.new(2020, 4, 30)
d11 = DateTime.new(2020, 5, 22)
d11 = DateTime.new(2020, 5, 25)
d12 = DateTime.new(2020, 5, 27)
d13 = DateTime.new(2020, 5, 29)
d14 = DateTime.new(2020, 5, 30)
d15 = DateTime.new(2020, 5, 12)
d16 = DateTime.new(2020, 5, 15)
d17 = DateTime.new(2020, 5, 17)
d18 = DateTime.new(2020, 5, 19)
d19 = DateTime.new(2020, 5, 9)
d20 = DateTime.new(2020, 5, 3)

# users
fred = User.create(first_name: "Fred", last_name: "Lombard", email: "fred@gmail.com", password: 123456, address: "87 Broadway, London, united kingdom", bio: "I like talking my dog for walks, and playing chess. I am 70 years old and am single living in a quiet borough of london." )
bobby = User.create!(first_name: "Bobby", last_name: "Williams", email: "bobby@gmail.com", password: 123456, address: "60 Kilburn High Road, London, united kingdom", bio: "I love me footy and a good pint of ale. I like meeting new people and having long conversations about life.")
emma = User.create!(first_name: "Emma", last_name: "Oliver", email: "emma@gmail.com", password: 123456, address: "342 King Street, london, united kingdom", bio: "Love cooking and helping people. I am a very sociable person, who loves meeting new people. Also enjoy long walks in the forest. ")
elizabeth = User.create!(first_name: "Elizabeth", last_name: "Reagon", email: "elizabeth@gmail.com", password: 123456, address: "9858 Grove Road, london, united kingdom", bio: "I enjoy a good glass of wine and lots of laughter, also this netflix thing is amazing!")
annie = User.create!(first_name: "Annie", last_name: "Davids", email: "annie@gmail.com", password: 123456, address: "16 bromley road, catford, United Kingdom", bio: "Very friendly and enjoy being around young people. Recently lost my husband, and have hip problems.")
matt = User.create!(first_name: "Matt", last_name: "Hill", email: "matt@gmail.com", password: 123456, address: "165 Mortlake Road, Richmond, United Kingdom", bio: "Love helping out in my community and making it a better place to live.")
marco = User.create!(first_name: "Marco", last_name: "Johnson", email: "marco@gmail.com", password: 123456, address: "65 Chester Road, London, united kingdom", bio: "Hipster-friendly web trailblazer. Infuriatingly humble travel nerd. Organizer. Food evangelist.")
olivia = User.create!(first_name: "Olivia", last_name: "Brown", email: "olivia@gmail.com", password: 123456, address: "9848 Grove Road, london, united kingdom", bio: "Passionate problem solver. Unapologetic tv scholar. Writer. Creator. Music maven. Explorer.")
charlotte = User.create!(first_name: "Charlotte", last_name: "Williams", email: "charlotte@gmail.com", password: 123456, address: "25 Chester Road, London, united kingdom", bio: "Hardcore organizer. Friendly web buff. Proud internet geek. Certified communicator.")
james = User.create!(first_name: "James", last_name: "Miller", email: "james@gmail.com", password: 123456, address: "170 Mortlake Road, Richmond, United Kingdom", bio: "Infuriatingly humble reader. Bacon specialist. Extreme food aficionado. Music scholar. Travel evangelist.")
lucas = User.create!(first_name: "Lucas", last_name: "Garcia", email: "lucas@gmail.com", password: 123456, address: "3 kellett road, brixton, london, united kingdom", bio: "Avide helper. Garden specialist. Love my music and passionate problem solver.")
irene = User.create!(first_name: "Irene", last_name: "Moore", email: "irene@gmail.com", password: 123456, address: "65 Broadway, London, united kingdom", bio: "Life loving and friendly person, enjoy weekends away and volunteering in my community.")
max = User.create!(first_name: "Max", last_name: "Elijah", email: "max@gmail.com", password: 123456, address: "12 harrow road, wembley, United Kingdom", bio: "Freelance analyst. Student. Incurable helpr lover. Devoted food maven. Reader.")
isabella = User.create!(first_name: "Isabella", last_name: "Harris", email: "isabella@gmail.com", password: 123456, address: "35 college road, croydon, united kingdom", bio: "I enjoy reading books and playing with my dog. Also enjoy nice long chats.")
liam = User.create!(first_name: "Liam", last_name: "Smith", email: "liam@gmail.com", password: 123456, address: "1 Knightsbridge Belgravia, London, united kingdom", bio: "I enjoy hiking, playing football and helping out in my community.")

# live posts
post0 = Post.create!(title: "Moving my washine machine.", content: "My strength isn't what it used to be and would really appreciate if someone could help me move the wahing machine to my garage.", user: fred, completed: false, date: d1)
post1 = Post.create!(title: "Trip to the dump", content: "Please could someone who has a car, help me take my garden refuse to the dump.", user: lucas, completed: false, date: d6)
post2 = Post.create!(title: "Looking for companionship", content: "Can't wait to spend time with you, just would like to have a nice long chat with someone about life.", user: bobby, completed: false, date: d3)
post3 = Post.create!(title: "Need help with curtains", content: "Please could someone help me hanging up my curtains, I am afraid I will fall and hurt myself.", user: elizabeth, completed: false, date: d4)
post4 = Post.create!(title: "Grocery shopping", content: "Please could someone help me with my grocery shopping.", user: isabella, completed: false, date: d5)
post5 = Post.create!(title: "Garden help", content: "I need help just to trim down the hedge in my garden, I make a great ice tea for afterwards.", user: annie, completed: false, date: d2)
post6 = Post.create!(title: "Help me planting a tree", content: "Please could someone help me with planting a tree I bought this morning, I have all the tools just need help digging the hole.", user: olivia, completed: false, date: d7)
post7 = Post.create!(title: "Lift back home from Sainsbury", content: "I am doing a monthly shop, and dont have a car to get all my shopping home.", user: charlotte, completed: false, date: d8)
post8 = Post.create!(title: "Help assembling ikea table", content: "I bought a table from Ikea and thought I could assemble it myself but I am completely lost.", user: irene, completed: false, date: d9)
post18 = Post.create!(title: "Planting a herb garden", content: "I would love to build a herb garden, but need some help with planting.", user: max, completed: false, date: d21)
post19 = Post.create!(title: "Take my dog for a walk", content: "I hurt myself playing football yesterday and would really appreciate it if someone could take my dog out.", user: marco, completed: false, date: d22)
post20 = Post.create!(title: "Taking old books to the second-hand store", content: "I have loads of books I would like to donate but dont have a car to transport them.", user: james, completed: false, date: d23)
post21 = Post.create!(title: "Moving bed to my garage", content: "I just got a new bed and just need some help moving my old bed to the garage please.", user: matt, completed: false, date: d24)
post25 = Post.create!(title: "Take recycling to the dump", content: "I recently moved to London and had to buy all new furniture, I have load of packaging that I need to take to the dump please.", user: liam, completed: false, date: d18)
# completed posts
post9 = Post.create!(title: "Change a few lightbulbs", content: "Hi, my living room is in the dark but I am too afraid of heights to change the lightbulbs myself! Thanks :)", user: annie, completed: true, date: d10)
post10 = Post.create!(title: "Coffee table needs moving", content: "I'd like to make a little more space in the living room, would love someone to help me move a coffee table!", user: annie, completed: true, date: d11)
post11 = Post.create!(title: "Pick up medication at the vet", content: "Can someone pick up medication for my cat at the vet in Highgate? It's paid for but I forgot to take it with me when I was there. Thanks!", user: bobby, completed: true, date: d12)
post12 = Post.create!(title: "Moving dresser", content: "Just need someone to quickly help out moving a dresser, it'll be very quick but I can't do it alone. Thanks!", user: bobby, completed: true, date: d13)
post13 = Post.create!(title: "Teach me to mend sheets", content: "Hi, my sheets are lightly torn but in otherwise good condition. I'd like to mend them but have never done it before, can you show me how to sew them back together?", user: fred, completed: true, date: d14)
post14 = Post.create!(title: "Help with admin", content: "Hi, my eyes aren't what they used to be which makes admin a bit of a challenge - can someone please help me out with it? SHouldn't take more than 30 minutes.", user: fred, completed: true, date: d15)
post15 = Post.create!(title: "Toaster needs fixing", content: "My toaster is broken, any chance you can take a look at it?", user: bobby, completed: true)
post16 = Post.create!(title: "Lift to Richmond", content: "If I'm on your way to Richmond and you have a bit of space in your car boot (I have a few small but heavy things to bring there), I would really appreciate a lift!", user: emma, completed: true, date: d16)
post17 = Post.create!(title: "Gardening", content: "Hi! Planning on planting various types of flowers and shrubs in my garden, never done it before. Youtube tutorials are nice but would love to learn from a live person as well! ", user: emma, completed: true, date: d17)
post18 = Post.create!(title: "Painting", content: "I had a leak in the roof which is fixed but just need to paint over it, I am just affraid of falling", user: annie, completed: true, date: d17)
post19 = Post.create!(title: "Show me how to cook simple dishes", content: "My wife used to do all the cooking, would someone be so kind to show me how to make a couple of simple meals.", user: bobby, completed: true, date: d16)
post20 = Post.create!(title: "shopping pick up", content: "Sainsbury wont deliver and need my groceries collected.", user: olivia, completed: true, date: d16)
post21 = Post.create!(title: "Moving large cupboard", content: "I need to clean behind my cupboard but cant move it.", user: irene, completed: true, date: d16)
post22 = Post.create!(title: "My I cant log into my email", content: "It was working last night, can someone please help me to get back into my email account.", user: annie, completed: true, date: d16)
post23 = Post.create!(title: "Someone to have a chat with", content: "I would really like to have a nice long chat to someone about life.", user: bobby, completed: true, date: d16)
post26 = Post.create!(title: "Have a blown lightbulb", content: "I need some help changing a lightbulb, its quite high and worried I will fall.", user: fred, completed: true, date: d16)
post27 = Post.create!(title: "Need help setting up whatsapp", content: "I recently got a smart phone to video call my children but I dont know how to use it.", user: elizabeth, completed: true, date: d16)
post28 = Post.create!(title: "Need a lift to town", content: "If anyone is going to town, please could i get a lift.", user: emma, completed: true, date: d16)
post29 = Post.create!(title: "Could someone teach me how to iron", content: "My wife recently left me and I dont know how to iron.", user: fred, completed: true, date: d16)
post30 = Post.create!(title: "Take my dog for a walk", content: "Im feeling very under the weather, could someone please take my dog for a walk.", user: olivia, completed: true, date: d16)
post31 = Post.create!(title: "Connect DVD to TV", content: "I just bought one of these smart TVs and need some help connecting my old DVD player please.", user: bobby, completed: true, date: d16)
# pending posts
post24 = Post.create!(title: "Lift to Richmond", content: "If any one is going to richmond on Saturday and could give me a lift I would be very appreciative.", user: liam, date: d25)

puts "............."

bid0 = Bid.create!(post_id: post0.id, user_id: matt.id )
bid1 = Bid.create!(post_id: post0.id, user_id: emma.id )
bid2 = Bid.create!(post_id: post0.id, user_id: fred.id )
bid3 = Bid.create!(post_id: post1.id, user_id: bobby.id )
bid4 = Bid.create!(post_id: post1.id, user_id: emma.id )
bid5 = Bid.create!(post_id: post1.id, user_id: matt.id )
bid6 = Bid.create!(post_id: post2.id, user_id: matt.id )
bid7 = Bid.create!(post_id: post2.id, user_id: emma.id )
bid8 = Bid.create!(post_id: post3.id, user_id: matt.id )
bid9 = Bid.create!(post_id: post4.id, user_id: fred.id )
bid19 = Bid.create!(post_id: post5.id, user_id: lucas.id )
bid20 = Bid.create!(post_id: post6.id, user_id: max.id )
bid21 = Bid.create!(post_id: post7.id, user_id: fred.id )
bid22 = Bid.create!(post_id: post7.id, user_id: bobby.id )
bid23 = Bid.create!(post_id: post8.id, user_id: matt.id )
bid24 = Bid.create!(post_id: post8.id, user_id: marco.id )
bid25 = Bid.create!(post_id: post18.id, user_id: lucas.id )
bid26 = Bid.create!(post_id: post19.id, user_id: charlotte.id )
bid27 = Bid.create!(post_id: post19.id, user_id: bobby.id )
bid28 = Bid.create!(post_id: post19.id, user_id: irene.id )
bid29 = Bid.create!(post_id: post20.id, user_id: fred.id )
bid30 = Bid.create!(post_id: post21.id, user_id: max.id )
bid31 = Bid.create!(post_id: post21.id, user_id: marco.id )
bid32 = Bid.create!(post_id: post24.id, user_id: bobby.id )
bid32 = Bid.create!(post_id: post24.id, user_id: matt.id )
bid32 = Bid.create!(post_id: post24.id, user_id: isabella.id )

# approved
bid10 = Bid.create!(post_id: post9.id, user_id: emma.id, approved: true )
bid11 = Bid.create!(post_id: post10.id, user_id: matt.id, approved: true )
bid12 = Bid.create!(post_id: post11.id, user_id: emma.id, approved: true )
bid13 = Bid.create!(post_id: post12.id, user_id: marco.id, approved: true )
bid14 = Bid.create!(post_id: post13.id, user_id: annie.id, approved: true )
bid15 = Bid.create!(post_id: post14.id, user_id: max.id, approved: true )
bid16 = Bid.create!(post_id: post15.id, user_id: fred.id, approved: true )
bid17 = Bid.create!(post_id: post16.id, user_id: fred.id, approved: true )
bid18 = Bid.create!(post_id: post17.id, user_id: lucas.id, approved: true )
bid19 = Bid.create!(post_id: post18.id, user_id: james.id, approved: true )
bid20 = Bid.create!(post_id: post19.id, user_id: charlotte.id, approved: true )
bid21 = Bid.create!(post_id: post20.id, user_id: irene.id, approved: true )
bid22 = Bid.create!(post_id: post21.id, user_id: marco.id, approved: true )
bid23 = Bid.create!(post_id: post22.id, user_id: liam.id, approved: true )
bid24 = Bid.create!(post_id: post23.id, user_id: emma.id, approved: true )
bid25 = Bid.create!(post_id: post25.id, user_id: emma.id, approved: true )
bid26 = Bid.create!(post_id: post26.id, user_id: matt.id, approved: true )
bid27 = Bid.create!(post_id: post27.id, user_id: matt.id, approved: true )
bid28 = Bid.create!(post_id: post28.id, user_id: bobby.id, approved: true )
bid29 = Bid.create!(post_id: post29.id, user_id: isabella.id, approved: true )
bid30 = Bid.create!(post_id: post30.id, user_id: emma.id, approved: true )
bid31 = Bid.create!(post_id: post31.id, user_id: max.id, approved: true )


Review.create!(content: "Wonderful! Emma was very friendly, incredibly helpful and showed up at the time she had set.", rating: 5, post_id: post9.id, user_id: annie.id, bid_id: bid10.id)
Review.create!(content: "You were kind, friendly soul with strong arms!", rating: 5, post_id: post10.id, user_id: annie.id, bid_id: bid11.id)
Review.create!(content: "A punctual and kind young lady with good conversation. Truly happy to have met her", rating: 5, post_id: post11.id, user_id: bobby.id, bid_id: bid12.id)
Review.create!(content: "Nice and friendly guy, but he scratched my hardwood floor while moving my dresser.", rating: 3, post_id: post12.id, user_id: bobby.id, bid_id: bid13.id)
Review.create!(content: "Thanks so much, but I felt a bit judged.", rating: 3, post_id: post13.id, user_id: fred.id, bid_id: bid14.id)
Review.create!(content: "Max helped me with some admin. He was very kind, had great conversation (but didn't waste time) and most importantly was incredibly helpful! Thank you Matt!", rating: 5, post_id: post14.id, user_id: fred.id, bid_id: bid15.id)
Review.create!(content: "Thanks for fixing my toaster!", rating: 5, post_id: post15.id, user_id: bobby.id, bid_id: bid16.id)
Review.create!(content: "Had a great time. Funny guy! He did arrive 2 hours late without letting me know beforehand though.", rating: 3, post_id: post16.id, user_id: emma.id, bid_id: bid17.id)
Review.create!(content: "Great gardener Lucas!", rating: 5, post_id: post17.id, user_id: emma.id, bid_id: bid18.id)
Review.create!(content: "Thanks for helping me paint my roof, but it looks worst than it was!", rating: 2, post_id: post18.id, user_id: annie.id, bid_id: bid19.id)
Review.create!(content: "Your cooking skils are great, thanks for sharing them with me!", rating: 4, post_id: post19.id, user_id: bobby.id, bid_id: bid20.id)
Review.create!(content: "Thanks for collecting my groceries for me!", rating: 5, post_id: post20.id, user_id: olivia.id, bid_id: bid21.id)
Review.create!(content: "You very strong thank you!", rating: 4, post_id: post21.id, user_id: irene.id, bid_id: bid22.id)
Review.create!(content: "Thanks Liam! You a real IT guru!", rating: 5, post_id: post22.id, user_id: annie.id, bid_id: bid23.id)
Review.create!(content: "Thanks for the great chat, you are such an interesting person!", rating: 5, post_id: post23.id, user_id: bobby.id, bid_id: bid24.id)
Review.create!(content: "Thanks for the help!", rating: 5, post_id: post26.id, user_id: fred.id, bid_id: bid26.id)
Review.create!(content: "Matt you really know alot about technology!", rating: 5, post_id: post27.id, user_id: elizabeth.id, bid_id: bid27.id)
Review.create!(content: "Thanks for the lift!", rating: 4, post_id: post28.id, user_id: emma.id, bid_id: bid28.id)
Review.create!(content: "Your ironing is top but you were a very grumpy!", rating: 2, post_id: post29.id, user_id: fred.id, bid_id: bid29.id)
Review.create!(content: "My dog loves you forever now, thanks for walking him!", rating: 5, post_id: post30.id, user_id: olivia.id, bid_id: bid30.id)
Review.create!(content: "Thanks for helping me connect my DVD to the tv!", rating: 5, post_id: post31.id, user_id: bobby.id, bid_id: bid31.id)

puts "Seed complete"


# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Chatroom.create! name: 'general'
# User.create! email: 'hello@world.com', password: "123456", nickname: "heaven"
# User.create! email: 'bonjour@world.com', password: "123456", nickname: "hell"
#for date use created_at eg for posts

