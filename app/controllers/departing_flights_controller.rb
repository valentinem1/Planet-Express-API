class DepartingFlightsController < ApplicationController

   def index
      @planet = Planet.find(params[:planet_id])
      json = @planet.departing_flights.map do |df|
         DepartingFlightSerializer.new(df).as_json
      end
      render json: json
      # to_json(include: {
      #    origin: {
      #       only: :id
      #    },
      #    destination: {
      #       only: :id
      #    }
      # },
      # except: [:created_at, :updated_at]
      # )
   end

end

