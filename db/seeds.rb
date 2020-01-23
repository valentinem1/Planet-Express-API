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
      image: "https://solarsystem.nasa.gov/system/feature_items/images/18_mercury_new.png"
   },
   venus: {
      name: "Venus",
      image: "https://solarsystem.nasa.gov/system/feature_items/images/27_venus_jg.png"
   },
   earth: {
      name: "Earth",
      image: "https://solarsystem.nasa.gov/system/feature_items/images/17_earth.png"
   },
   mars: {
      name: "Mars",
      image: "https://solarsystem.nasa.gov/system/feature_items/images/19_mars.png"
   },
   jupiter: {
      name: "Jupiter",
      image: "https://solarsystem.nasa.gov/system/feature_items/images/16_jupiter_new.png"
   },
   saturn: {
      name: "Saturn",
      image: "https://solarsystem.nasa.gov/system/feature_items/images/28_saturn.png"
   },
   uranus: {
      name: "Uranus",
      image: "https://solarsystem.nasa.gov/system/feature_items/images/29_uranus.png"
   },
   neptune: {
      name: "Neptune",
      image: "https://solarsystem.nasa.gov/system/feature_items/images/30_neptune.png"
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

# Because oribital mechanics are complicated, I had to find a middle ground between coding all the math in the back end.
# This method, while repetitive, is still less repetitive than entering each transfer date manually.
# The intervals and travel times are based on a model of the solar system with circular orbits, which inaccurate.
# But it's close enough, and is more interesting than not doing any orbital math at all.
# And it's far less complicated than running a calculation to simulate the positions of all the planets in the solar system so...

transfers_from_earth = [
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
]

transfers_from_mercury = [
   {
      origin: mercury,
      destination: earth,
      date: Date.new(1999, 10, 18),
      interval: 115.7779,
      days: 106
   },
]

transfers_from_venus = [
   {
      origin: venus,
      destination: earth,
      date: Date.new(1999, 6, 23),
      interval: 583.5255,
      days: 146
   },
]

transfers_from_mars = [
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
]

transfers_from_jupiter =[
   {
      origin: jupiter,
      destination: earth,
      date: Date.new(2000, 8, 21),
      interval: 398.5800,
      days: 997
   },
]

transfers_from_saturn =[
   {
      origin: saturn,
      destination: earth,
      date: Date.new(2000, 4, 28),
      interval: 377.8114,
      days: 2207
   },
]

transfers_from_uranus =[
   {
      origin: uranus,
      destination: earth,
      date: Date.new(2000, 1, 20),
      interval: 369.38,
      days: 5858
   },
]

transfers_from_neptune = [
   {
      origin: neptune,
      destination: earth,
      date: Date.new(2000, 6, 15),
      interval: 367.2265,
      days: 11181
   },
]

first_year = 2020
last_year = 2050

def createFlights(transfers)
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
end

createFlights(transfers_from_mercury)

createFlights(transfers_from_venus)

createFlights(transfers_from_earth)

createFlights(transfers_from_mars)

createFlights(transfers_from_jupiter)

createFlights(transfers_from_saturn)

createFlights(transfers_from_uranus)

createFlights(transfers_from_neptune)