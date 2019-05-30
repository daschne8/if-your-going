class Shop < ApplicationRecord
  has_many :shop_tags
  has_many :tags, through: :shop_tags
end
