class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :image # , :flights
  # has_many :flights
end
