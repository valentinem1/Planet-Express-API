class Planet < ApplicationRecord
    
    has_many :departing_flights, foreign_key: :origin_id, class_name: 'Flight'
    has_many :departures, through: :departing_flights, source: :planet
    
    has_many :arriving_flights, foreign_key: :destination_id, class_name: 'Flight'
    has_many :arrivals, through: :arriving_flights, source: :planet

    # can we link to tickets through arrivals and departures?

end

