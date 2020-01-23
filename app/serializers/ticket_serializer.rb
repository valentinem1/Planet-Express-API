class TicketSerializer < ActiveModel::Serializer
  attributes :id, :price, :flight
end
