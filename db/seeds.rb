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
uranus = Planet.create(planets[:uranus])
neptune = Planet.create(planets[:neptune])

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
   },
   {
      name: "Tardis",
      capacity: 30
   },
   {
      name: "Heart of Gold",
      capacity: 50
   },
   {
      name: "Discovery",
      capacity: 50
   }
]

# Because oribital mechanics are complicated, I had to find a middle ground between coding all the math in the back end 

transfers = [

# from earth
   {
      origin: earth,
      destination: mercury,
      date: Date.new(2020, 4, 7),
      interval: 115.7779,
      days: 106
   },
   {
      origin: earth,
      destination: venus,
      date: Date.new(1999, 5, 25),
      interval: 583.5255,
      days: 146
   },
   {
      origin: earth,
      destination: mars,
      date: Date.new(2001, 4, 1),
      interval: 779.421,
      days: 259
   },
   {
      origin: earth,
      destination: jupiter,
      date: Date.new(1999, 7, 3),
      interval: 398.5800,
      days: 997
   },
   {
      origin: earth,
      destination: saturn,
      date: Date.new(1999, 7, 19),
      interval: 377.8114,
      days: 2207
   },
   {
      origin: earth,
      destination: uranus,
      date: Date.new(2000, 4, 14),
      interval: 369.38,
      days: 5858
   },
   {
      origin: earth,
      destination: neptune,
      date: Date.new(2000, 4, 3),
      interval: 367.2265,
      days: 11181
   },


# from mercury
   {
      origin: mercury,
      destination: earth,
      date: Date.new(1999, 10, 18),
      interval: 115.7779,
      days: 106
   },


# from venus
   {
      origin: venus,
      destination: earth,
      date: Date.new(1999, 6, 23),
      interval: 583.5255,
      days: 146
   },


# from mars
   {
      origin: mars,
      destination: mercury,
      date: Date.new(2000, 3, 26),
      interval: 101.0028,
      days: 171
   },
   {
      origin: mars,
      destination: venus,
      date: Date.new(2019, 3, 18),
      interval: 333.683,
      days: 217
   },
   {
      origin: mars,
      destination: earth,
      date: Date.new(2001, 1, 25),
      interval: 779.421,
      days: 259
   },
   # {
   #    origin: mars,
   #    destination: jupiter,
   #    date: Date.new(, , ),
   #    interval: ,
   #    days: 
   # },
   # {
   #    origin: mars,
   #    destination: saturn,
   #    date: Date.new(, , ),
   #    interval: ,
   #    days: 
   # },
   # {
   #    origin: mars,
   #    destination: uranus,
   #    date: Date.new(, , ),
   #    interval: ,
   #    days: 
   # },
   # {
   #    origin: mars,
   #    destination: neptune,
   #    date: Date.new(, , ),
   #    interval: ,
   #    days: 
   # },

# from jupiter
   {
      origin: jupiter,
      destination: earth,
      date: Date.new(2000, 8, 21),
      interval: 398.5800,
      days: 997
   },


# from saturn
   {
      origin: saturn,
      destination: earth,
      date: Date.new(2000, 4, 28),
      interval: 377.8114,
      days: 2207
   },


# from uranus
   {
      origin: uranus,
      destination: earth,
      date: Date.new(2000, 1, 20),
      interval: 369.38,
      days: 5858
   },


# from neptune
   {
      origin: neptune,
      destination: earth,
      date: Date.new(2000, 6, 15),
      interval: 367.2265,
      days: 11181
   }
]

first_year = 2020
last_year = 2050

# create Flights
transfers.each do |transfer|
   transfer_date = transfer[:date]
   days = transfer[:days]
   while transfer_date.year <= last_year do
      ship = ships.sample
      if transfer_date.year >= first_year
         Flight.create(
            origin: transfer[:origin],
            destination: transfer[:destination], 
            ship_name: ship[:name], 
            capacity: ship[:capacity], 
            departure: transfer_date,
            days: days,
            arrival: (transfer_date+days)
         )
      end
      transfer_date += transfer[:interval]
   end
end

