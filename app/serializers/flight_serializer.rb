class FlightSerializer < ActiveModel::Serializer
  attributes :id, :origin, :departure, :destination, :arrival, :capacity, :remaining_tickets, :days, :ship_name
  # need to limit the info about origin and destination planets to just id and maybe name
end

