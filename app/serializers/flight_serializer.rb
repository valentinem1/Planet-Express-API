class FlightSerializer < ActiveModel::Serializer
  attributes :id, :departure, :arrival, :capacity, :ship_name, :planet_id
  has_many :tickets
end
