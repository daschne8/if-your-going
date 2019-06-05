class Establishment < ApplicationRecord
  has_many :occupants

  has_many :goods, through: :occupants
end
