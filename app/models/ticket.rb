class Ticket < ApplicationRecord
  belongs_to :flight
  belongs_to :planet, through: flight
end
