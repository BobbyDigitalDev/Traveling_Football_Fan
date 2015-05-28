# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Itinerary.delete_all
Stadium.delete_all

User.create({name: "Leslie Knope", email: "les@knope2015.com", password: "waffles"})
User.create({name: "Tom Haverford", email: "tommy@e720.com", password: "treatyoself"})

Itinerary.create({name: "England Games", user_id: 15})
Itinerary.create({name: "Barcelona-Camp Nou", user_id: 8})
Itinerary.create({name: "Germany games", user_id: 9})

Stadium.create({name:"Rungnado May Day Stadium", capacity: 150000, city:"Pyonyang", country:"North korea", home_team:"Korea DPR national football team"})
Stadium.create({name:"Camp Nou", capacity: 99786, city:"Barcelona", country:"Spain", home_team:"FC Barcelona"})
Stadium.create({name:"Estadio Azteca", capacity: 95500, city:"Mexico City", country:"Mexico", home_team:"Mexico national football team, Club América"})


