class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :departing_flights, :arriving_flights
  # need to limit the info coming through about departing and arriving flights
end
