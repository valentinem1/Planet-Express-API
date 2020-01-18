class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :distance
  has_many :flights
end
