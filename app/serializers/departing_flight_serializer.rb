class DepartingFlightSerializer < ActiveModel::Serializer
attributes {:origin, only: [:id, :name]}

end

