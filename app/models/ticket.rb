class Ticket < ApplicationRecord
  belongs_to :flight
  # belongs_to :planet, through: :flight
  # had to comment it out to be able to seed the data
end
