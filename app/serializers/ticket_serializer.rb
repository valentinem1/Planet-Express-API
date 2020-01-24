class TicketSerializer < ActiveModel::Serializer
  attributes :id, :price, :flight, :passenger_names, :passenger_count
end
