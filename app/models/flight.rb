class Flight < ApplicationRecord
  has_many :tickets
  belongs_to :destination, class_name: 'Planet'
  belongs_to :origin, class_name: 'Planet'

  attr_accessor :remaining_tickets

  def remaining_tickets
    @remaining_tickets = self.capacity - self.tickets.count
  end

end

