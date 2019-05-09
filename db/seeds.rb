# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Chat.destroy_all

50.times do
  User.create(name: Faker::Name.name)
end

100.times do
  Post.create(title: Faker::Lorem.sentence(3), text: Faker::Lorem.characters(20), user_id: User.all.sample.id)
end

# user1=User.create(name: "John")
# user2=User.create(name: "Doreen")
# user3=User.create(name:"Stacy")
# user4=User.create(name:"Janet")
# user5=User.create(name:"Lucy")
# user6=User.create(name:"Caro")
# user7=User.create(name:"Jean")
# user8=User.create(name:"Oslo")
# user9=User.create(name:"Kitty")
# user10=User.create(name:"Elaie")
#
# post1=Post.create(title: "weather",text: "nice weather", user_id: John.id)
# post2=Post.create(title: "weather",text: "good weather", user_id: Kitty.id)
# post3=Post.create(title: "weather",text: "nice weather", user_id: Oslo.id)
# post4=Post.create(title: "weather",text: "nice weather", user_id: Stacy.id)
# post5=Post.create(title: "political",text: "brexit", user_id: John.id)
# post6=Post.create(title: "sports",text: "football", user_id: John.id)
