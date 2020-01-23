class DepartingFlightSerializer < ActiveModel::Serializer
   attributes :id, :origin_id, :destination_id, :ship_name, :capacity, :remaining_tickets, :departure, :arrival, :days

   # def remaining_tickets
   #    @remaining_tickets = self.capacity - self.tickets.count
   # end
end

# {
# id: 1,
# origin_id: 3,
# destination_id: 1,
# ship_name: "Enterprise",
# capacity: 500,
# departure: "2020-04-07T00:00:00.000Z",
# arrival: "2020-07-22T00:00:00.000Z",
# days: 106,
# origin: {
# id: 3
# },
# destination: {
# id: 1
# }
# },