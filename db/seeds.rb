# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "user1", email: "user1@example.com", password: "password1")
Loanable.find_or_create_by(user_id: user1.id, title: "Hammer", description: "Heavy Duty Hammer", location: "Blk 998, Yishun Ave 2", contact: "93532357", end: Time.zone.now + 1.week)
Loanable.find_or_create_by(user_id: user1.id, title: "Ladder", description: "2m Ladder", location: "Blk 998, Yishun Ave 2", contact: "93532357", end: Time.zone.now + 1.week)
Loanable.find_or_create_by(user_id: user1.id, title: "ScrewDriver Set", description: "Set of 100", location: "Blk 998, Yishun Ave 2", contact: "93532357", end: Time.zone.now + 1.week)

user2 = User.create(name: "user2", email: "user2@example.com", password: "password1")
Loanable.find_or_create_by(user_id: user2.id, title: "Electric Drill", description: "PowerPac Electric Drill MX455", location: "Blk 201, Yishun Ave 10", contact: "88345621", end: Time.zone.now + 1.week)
Loanable.find_or_create_by(user_id: user2.id, title: "ChainSaw", description: "Caterpillar PowerSaw CP305", location: "Blk 201, Yishun Ave 10", contact: "88345621", end: Time.zone.now + 1.week)
Loanable.find_or_create_by(user_id: user2.id, title: "Monitor", description: "Dell U2718Q", location: "Blk 201, Yishun Ave 10", contact: "88345621", end: Time.zone.now + 1.week)

user3 = User.create(name: "user3", email: "user3@example.com", password: "password1")
Loanable.find_or_create_by(user_id: user3.id, title: "DVD Player", description: "Dholby Dimension All-In-One CD Player DD501", location: "Blk 445c, Yishun Ave 3", contact: "95672143", end: Time.zone.now + 1.week)
Loanable.find_or_create_by(user_id: user3.id, title: "Keyboard", description: "Realforce R2 RGB Tenkeyless", location: "Blk 445c, Yishun Ave 3", contact: "95672143", end: Time.zone.now + 1.week)
Loanable.find_or_create_by(user_id: user3.id, title: "Bose Standing Speaker Set", description: "Bose Standup Theater System BO3", location: "Blk 445c, Yishun Ave 3", contact: "95672143", end: Time.zone.now + 1.week)
