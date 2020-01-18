class Flight < ApplicationRecord
  has_many :tickets
  belongs_to :planet
end
