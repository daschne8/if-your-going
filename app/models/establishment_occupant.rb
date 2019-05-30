class EstablishmentOccupant < ApplicationRecord
  belongs_to :establishment
  belongs_to :occupant
end
