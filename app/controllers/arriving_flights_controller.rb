class ArrivingFlightsController < ApplicationController

   def index
      @planet = Planet.find(params[:planet_id])
      render json: @planet.arriving_flights.to_json(include: {
         origin: {
            only: :id
         },
         destination: {
            only: :id
         }
      },
      except: [:created_at, :updated_at]
      )
   end

end

