# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "user1", email: "user1@example.com", password: "password1")
Loanable.find_or_create_by(user_id: user1.id, title: "Hammer", description: "Heavy Duty Hammer", location: "Blk 998, Yishun Ave 2", contact: "93532357", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.toolfetch.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F1%2Fimage%2F1024x%2F9df78eab33525d08d6e5fb8d27136e95%2FG%2FD%2FGD-8883700_000.jpg&f=1&nofb=1")
Loanable.find_or_create_by(user_id: user1.id, title: "Ladder", description: "2m Ladder", location: "Blk 998, Yishun Ave 2", contact: "93532357", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.7UhchySeQKqPS2MsAwcEuQHaHa%26pid%3DApi&f=1")
Loanable.find_or_create_by(user_id: user1.id, title: "ScrewDriver Set", description: "Set of 100", location: "Blk 998, Yishun Ave 2", contact: "93532357", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.9sgy0sKOvAGKIJhN3z_h9wHaEb%26pid%3DApi&f=1")

user2 = User.create(name: "user2", email: "user2@example.com", password: "password1")
Loanable.find_or_create_by(user_id: user2.id, title: "Electric Drill", description: "PowerPac Electric Drill MX455", location: "Blk 201, Yishun Ave 10", contact: "88345621", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.powerpac.co.nz%2Fpi%2FAlfraMagneticBaseDrill-V32%4018710%40500x500.jpg&f=1&nofb=1")
Loanable.find_or_create_by(user_id: user2.id, title: "ChainSaw", description: "Caterpillar PowerSaw CP305", location: "Blk 201, Yishun Ave 10", contact: "88345621", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ebayimg.com%2Fimages%2Fi%2F292181842319-0-1%2Fs-l1000.jpg&f=1&nofb=1")
Loanable.find_or_create_by(user_id: user2.id, title: "Monitor", description: "Dell U2718Q", location: "Blk 201, Yishun Ave 10", contact: "88345621", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.mwave.com.au%2Fimages%2F400%2FAC06976.jpg&f=1&nofb=1")

user3 = User.create(name: "user3", email: "user3@example.com", password: "password1")
Loanable.find_or_create_by(user_id: user3.id, title: "DVD Player", description: "Dholby Dimension All-In-One CD Player DD501", location: "Blk 445c, Yishun Ave 3", contact: "95672143", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Cp0LoCttTE2g5Ban_60pxwHaHa%26pid%3DApi&f=1")
Loanable.find_or_create_by(user_id: user3.id, title: "Keyboard", description: "Realforce R2 RGB Tenkeyless", location: "Blk 445c, Yishun Ave 3", contact: "95672143", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.ag--dRaibSG5jMeW_7dazwAAAA%26pid%3DApi&f=1")
Loanable.find_or_create_by(user_id: user3.id, title: "Bose Standing Speaker Set", description: "Bose Standup Theater System BO3", location: "Blk 445c, Yishun Ave 3", contact: "95672143", end: Time.zone.now + 1.week, url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.ZuYa9oWhdav_IW7cqY_EkwHaIk%26pid%3DApi&f=1")
