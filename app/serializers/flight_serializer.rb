class FlightSerializer < ActiveModel::Serializer
  attributes :id, :departure, :arrival, :capacity, :ship_name
  has_many :tickets
end
