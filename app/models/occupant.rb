class Occupant < ApplicationRecord
  belongs_to :establishment

  has_many :goods, dependent: :destroy

  has_secure_password

  validates :name, presence: true

end
