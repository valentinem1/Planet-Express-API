class Ticket < ApplicationRecord

  belongs_to :flight

  # should we connect the flight to the origin and destination planet? not super necessary rn.

end
