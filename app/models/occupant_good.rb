class OccupantGood < ApplicationRecord
  belongs_to :occupant
  belongs_to :good
end
