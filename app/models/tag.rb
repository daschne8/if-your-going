class Tag < ApplicationRecord
  has_many :good_tags
  has_many :goods, through: :good_tags, dependent: :delete_all

  has_many :shop_tags
  has_many :shops, through: :shop_tags, dependent: :delete_all

  # def self.find_tag(tag_id)
  #   if !tag_id.blank?
  #     tag = Tag.find_by(id: tag_id)
  #     goods = tag.goods
  #     filter = "Filtered by tag, #{tag.name}"
  #   else
  #     goods = Good.all
  #   end
  #   return goods,filter
  # end


end
