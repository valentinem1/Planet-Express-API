class FlightSerializer < ActiveModel::Serializer
  attributes :id, :departure, :arrival, :capacity, :remaining_tickets, :ship_name, :origin, :destination, :days
  # has_many :tickets
end

