class Planet < ApplicationRecord
    has_many :flights
    has_many :tickets, through: :flights
end
