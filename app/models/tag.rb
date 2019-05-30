class Tag < ApplicationRecord
  has_many :good_tags
  has_many :goods, through: :good_tags

  has_many :shop_tags
  has_many :shops, through: :shop_tags
end
