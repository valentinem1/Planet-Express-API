class DepartingFlightsController < ApplicationController

   def index
      @planet = Planet.find(params[:planet_id])
      json = @planet.departing_flights.map do |df|
         DepartingFlightSerializer.new(df).as_json
      end
      render json: json
      # render json: @planet.departing_flights.to_json(include: {
      #    origin: {
      #       only: :id
      #    },
      #    destination: {
      #       only: :id
      #    }
      # },
      # # only: :remaining_tickets,
      # except: [:created_at, :updated_at]
      # )
   end
   
end

