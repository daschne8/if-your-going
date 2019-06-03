class Occupant < ApplicationRecord
  has_many :establishment_occupants
  has_many :establishments, through: :establishment_occupants

  has_many :occupant_goods
  has_many :goods, through: :occupant_goods

  has_secure_password

  validates :name, presence: true
  
end
