class Good < ApplicationRecord
  has_many :occupant_goods
  has_many :occupants, through: :occupant_goods

  has_many :good_tags
  has_many :tags, through: :good_tags
end
