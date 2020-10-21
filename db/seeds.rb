# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
game_1 = Game.create(title: "Smash Bros", genre: "Fighting", platform: "Switch", price: 60)
game_2 = Game.create(title: "Apex Legends", genre: "First Person Shooter", platform: "PC", price: 0)
game_3 = Game.create(title: "Halo: Reach", genre: "First Person Shooter", platform: "Xbox", price: 40)
game_4 = Game.create(title: "Rocket League", genre: "Sports game", platform: "PlayStation", price: 30)
game_5 = Game.create(title: "Among Us", genre: "Strategy", platform: "Mobile", price: 0)
