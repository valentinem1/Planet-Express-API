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
      image: ""
   },
   venus: {
      name: "Venus",
      image: ""
   },
   earth: {
      name: "Earth",
      image: ""
   },
   mars: {
      name: "Mars",
      image: ""
   },
   jupiter: {
      name: "Jupiter",
      image: ""
   },
   saturn: {
      name: "Saturn",
      image: ""
   },
   uranus: {
      name: "Uranus",
      image: ""
   },
   neptune: {
      name: "Neptune",
      image: ""
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
   "Pirate Ship", 
   "Millenium Falcon", 
   "Enterprise", 
   "Voyager", 
   "Flying Winnebago", 
   "Intrepid", 
   "Spacex Starship"
]

mercury_transfer = Date.new(2020, 4, 7)
travel_time = 106
while mercury_transfer.year <= 2100 do
   if mercury_transfer.year >= 2020
      Flight.create(
         planet: mercury, 
         ship_name: ships.sample, 
         capacity: 20, 
         departure: mercury_transfer, 
         arrival: (mercury_transfer+travel_time)
      )
   end
   mercury_transfer += 115.7779
end

venus_transfer = Date.new(1999, 5, 25)
travel_time = 146
while venus_transfer.year <= 2100 do
   if venus_transfer.year >= 2020
      Flight.create(
         planet: venus, 
         ship_name: ships.sample, 
         capacity: 20, 
         departure: venus_transfer, 
         arrival: (venus_transfer+travel_time)
      )
   end
   venus_transfer += 583.5255
end

mars_transfer = Date.new(2001, 4, 1)
travel_time = 259
while mars_transfer.year <= 2100 do
   if mars_transfer.year >= 2020
      Flight.create(
         planet: mars, 
         ship_name: ships.sample, 
         capacity: 20, 
         departure: mars_transfer, 
         arrival: (mars_transfer+travel_time)
      )
   end
   mars_transfer += 779.421
end

jupiter_transfer = Date.new(1999, 7, 3)
travel_time = 997
while jupiter_transfer.year <= 2100 do
   if jupiter_transfer.year >= 2020
      Flight.create(
         planet: jupiter, 
         ship_name: ships.sample, 
         capacity: 20, 
         departure: jupiter_transfer, 
         arrival: (jupiter_transfer+travel_time)
      )
   end
   jupiter_transfer += 398.5800
end

saturn_transfer = Date.new(1999, 7, 19)
travel_time = 2207
while saturn_transfer.year <= 2100 do
   if saturn_transfer.year >= 2020
      Flight.create(
         planet: saturn, 
         ship_name: ships.sample, 
         capacity: 20, 
         departure: saturn_transfer, 
         arrival: (saturn_transfer+travel_time)
      )
   end
   saturn_transfer += 377.8114
end