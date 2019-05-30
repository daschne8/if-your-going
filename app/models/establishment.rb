class Establishment < ApplicationRecord
  has_many :establishment_occupants
  has_many :occupants, through: :establishment_occupants
end
