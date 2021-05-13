# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team = Team.create!(name: "claims")
[{"name": "someone", "phone_number": "9944194659"}, {"name": "somebody", "phone_number": "9443181094"}].each {|dev| team.developers.create!(dev) }

team2 = Team.create!(name: "Jayaram")
[{"name": "someone", "phone_number": "9944194659"}, {"name": "somebody", "phone_number": "9443181094"}].each {|dev| team2.developers.create!(dev) }