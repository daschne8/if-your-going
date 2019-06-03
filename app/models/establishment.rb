class Establishment < ApplicationRecord
  has_many :establishment_occupants
  has_many :occupants, through: :establishment_occupants

  has_many :establishment_goods
  has_many :goods, through: :establishment_goods
end
