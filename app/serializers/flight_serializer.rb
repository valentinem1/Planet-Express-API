class FlightSerializer < ActiveModel::Serializer
  attributes :id
  has_many :tickets
end
