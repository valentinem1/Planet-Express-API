# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mars = Planet.create(name: "Mars", distance: 4, image: "img_here")

flight_1 = Flight.create(planet: mars, ship: "Pirate Ship", speed: 1000, departure_date: Time.now, capacity: 20)

20.times do
Ticket.create(flight: flight_1, price: 5_000_000)
end