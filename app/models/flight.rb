class Flight < ApplicationRecord
  has_many :tickets
  belongs_to :destination, class_name: 'Planet'
  belongs_to :origin, class_name: 'Planet'

  attr_accessor :remaining_tickets

  def remaining_tickets
    # @remaining_tickets = self.capacity - self.tickets.count
    total_passenger_count = 0
    self.tickets.each do |ticket| 
      total_passenger_count += ticket.passenger_count
    end
    @remaining_tickets = self.capacity - total_passenger_count
  end

end

