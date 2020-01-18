class TicketSerializer < ActiveModel::Serializer
  attributes :id, :flight_id, :price
end
