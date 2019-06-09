class Tag < ApplicationRecord
  has_many :good_tags
  has_many :goods, through: :good_tags, dependent: :delete_all

  has_many :shop_tags
  has_many :shops, through: :shop_tags, dependent: :delete_all
end
