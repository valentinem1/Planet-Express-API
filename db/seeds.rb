# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ticket.destroy_all
Flight.destroy_all
Planet.destroy_all

planets = {
   mercury: {
      name: "Mercury",
      image: "https://cnet4.cbsistatic.com/img/eNbe9KkmNAYVSuw0ORDdAGX2oZA=/2019/11/07/cd0b412a-fa1a-4b59-8318-ad1d65234af3/nasamercury.jpg"
   },
   venus: {
      name: "Venus",
      image: "https://www.universetoday.com/wp-content/uploads/2017/08/venus-e1502994496509.jpg"
   },
   earth: {
      name: "Earth",
      image: "https://media.npr.org/assets/img/2013/03/06/bluemarble3k-smaller-nasa_custom-644f0b7082d6d0f6814a9e82908569c07ea55ccb-s800-c85.jpg"
   },
   mars: {
      name: "Mars",
      image: "https://www.classicalwcrb.org/sites/wcrb/files/styles/medium/public/201609/mars-614x412.jpg"
   },
   jupiter: {
      name: "Jupiter",
      image: "https://cosmos-magazine.imgix.net/file/spina/photo/10734/170613_Jupiter_Full.jpg?fit=clip&w=835"
   },
   saturn: {
      name: "Saturn",
      image: "https://mk0astronomynow9oh6g.kinstacdn.com/wp-content/uploads/2019/06/Saturn_at_opposition_9Jul2019_1564x1173.png"
   },
   uranus: {
      name: "Uranus",
      image: "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fstartswithabang%2Ffiles%2F2019%2F01%2Furanus-1200x800.jpg"
   },
   neptune: {
      name: "Neptune",
      image: "https://s3.amazonaws.com/images.spaceref.com/news/2019/ooneptune.jpg"
   }
}

mercury = Planet.create(planets[:mercury])
venus = Planet.create(planets[:venus])
earth = Planet.create(planets[:earth])
mars = Planet.create(planets[:mars])
jupiter = Planet.create(planets[:jupiter])
saturn = Planet.create(planets[:saturn])
# uranus = Planet.create(planets[:uranus])
# neptune = Planet.create(planets[:neptune])

ships = [
   {
      name: "Pirate Ship",
      capacity: 80
   },
   {
      name: "Millenium Falcon",
      capacity: 40
   },
   {
      name: "Enterprise", 
      capacity: 500
   },
   {
      name: "Voyager",
      capacity: 350
   },
   {
      name: "Flying Winnebago",
      capacity: 8
   },
   {
      name: "Intrepid",
      capacity: 120
   },
   {
      name: "Spacex Starship",
      capacity: 100
   }
]

transfers = [
   {
      planet: mercury,
      date: Date.new(2020, 4, 7),
      interval: 115.7779,
      time: 106
   },
   {
      planet: venus,
      date: Date.new(1999, 5, 25),
      interval: 583.5255,
      time: 146
   },
   {
      planet: mars,
      date: Date.new(2001, 4, 1),
      interval: 779.421,
      time: 259
   },
   {
      planet: jupiter,
      date: Date.new(1999, 7, 3),
      interval: 398.5800,
      time: 997
   },
   {
      planet: saturn,
      date: Date.new(1999, 7, 19),
      interval: 377.8114,
      time: 2207
   }     
]

first_year = 2020
last_year = 2050

transfers.each do |transfer|
   transfer_date = transfer[:date]
   travel_time = transfer[:time]
   while transfer_date.year <= last_year do
      ship = ships.sample
      if transfer_date.year >= first_year
         Flight.create(
            planet: transfer[:planet], 
            ship_name: ship[:name], 
            capacity: ship[:capacity], 
            departure: transfer_date, 
            arrival: (transfer_date+travel_time)
         )
      end
      transfer_date += transfer[:interval]
   end
end

# mercury_transfer: Date.new(2020, 4, 7)
# travel_time = 106
# while mercury_transfer.year <= 2100 do
#    if mercury_transfer.year >= 2020
#       Flight.create(
#          planet: mercury, 
#          ship_name: ships.sample, 
#          capacity: 20, 
#          departure: mercury_transfer, 
#          arrival: (mercury_transfer+travel_time)
#       )
#    end
#    mercury_transfer += 115.7779
# end

# venus_transfer = Date.new(1999, 5, 25)
# travel_time = 146
# while venus_transfer.year <= 2100 do
#    if venus_transfer.year >= 2020
#       Flight.create(
#          planet: venus, 
#          ship_name: ships.sample, 
#          capacity: 20, 
#          departure: venus_transfer, 
#          arrival: (venus_transfer+travel_time)
#       )
#    end
#    venus_transfer += 583.5255
# end

# mars_transfer = Date.new(2001, 4, 1)
# travel_time = 259
# while mars_transfer.year <= 2100 do
#    if mars_transfer.year >= 2020
#       Flight.create(
#          planet: mars, 
#          ship_name: ships.sample, 
#          capacity: 20, 
#          departure: mars_transfer, 
#          arrival: (mars_transfer+travel_time)
#       )
#    end
#    mars_transfer += 779.421
# end

# jupiter_transfer = Date.new(1999, 7, 3)
# travel_time = 997
# while jupiter_transfer.year <= 2100 do
#    if jupiter_transfer.year >= 2020
#       Flight.create(
#          planet: jupiter, 
#          ship_name: ships.sample, 
#          capacity: 20, 
#          departure: jupiter_transfer, 
#          arrival: (jupiter_transfer+travel_time)
#       )
#    end
#    jupiter_transfer += 398.5800
# end

# saturn_transfer = Date.new(1999, 7, 19)
# travel_time = 2207
# while saturn_transfer.year <= 2100 do
#    if saturn_transfer.year >= 2020
#       Flight.create(
#          planet: saturn, 
#          ship_name: ships.sample, 
#          capacity: 20, 
#          departure: saturn_transfer, 
#          arrival: (saturn_transfer+travel_time)
#       )
#    end
#    saturn_transfer += 377.8114
# end
