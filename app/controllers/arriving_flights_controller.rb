class ArrivingFlightsController < ApplicationController

   def index
      @planet = Planet.find(params[:planet_id])
      render json: @planet.arriving_flights
   end

end
