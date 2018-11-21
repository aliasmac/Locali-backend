# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



broadcaster1 = User.create(name: "Ali")

broadcast1 = Broadcast.create(name: "London" , broadcaster_id: broadcaster1.id , pin: 1234)
# broadcast2 = Broadcast.create(name: "NYC" , broadcaster_id: broadcaster1.id , pin: 4567)

message1 = Message.create(content: "welcome", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
message2 = Message.create(content: "bonjour", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
message3 = Message.create(content: "salam", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
message4 = Message.create(content: "ola", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
message5 = Message.create(content: "sup", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)

# message6 = Message.create(content: "Homer", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
# message7 = Message.create(content: "Marge", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
# message8 = Message.create(content: "Maggie", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
# message9 = Message.create(content: "Bart", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)
# message10 = Message.create(content: "Lisa", latitude: 51.507276, longitude: -0.12766, broadcast_id: broadcast1.id)

receiver1 = User.create(name: "Stan")

message1 = Message.create(content: "welcome", latitude: 51.507276, longitude: -0.12766, broadcast_id: 1)
message2 = Message.create(content: "bonjour", latitude: 51.507276, longitude: -0.12766, broadcast_id: 1)
message3 = Message.create(content: "salam", latitude: 51.507276, longitude: -0.12766, broadcast_id: 1)
message4 = Message.create(content: "ola", latitude: 51.507276, longitude: -0.12766, broadcast_id: 1)
message5 = Message.create(content: "sup", latitude: 51.507276, longitude: -0.12766, broadcast_id: 1)