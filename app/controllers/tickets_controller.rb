class TicketsController < ApplicationController
    def index
        tickets = Ticket.all
        render json: tickets
    end

    def show
        ticket = Ticket.find(params[:id])
        render json: ticket
    end

    def create

        ticket = Ticket.create(params.permit(:flight_id, :price))

        render json: ticket
    end

    def destroy
        ticket = Ticket.find(params[:id])
        ticket.destroy
        render json: ticket
    end

end

