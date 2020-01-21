class FlightsController < ApplicationController
    def index
        flights = Flight.all
        render json: flights
    end

    def show
        flight = Flight.find(params[:id])
        render json: flight
    end
end


# class DeparturesController < ApplicationController

#     def index
#         departures = Departure.all
#         render json: departures
#     end

#     def show
#         departure = Departure.find(params[:id])
#         render json: departure
#     end

# end