class Good < ApplicationRecord
  belongs_to :occupant
  has_many :good_tags, dependent: :destroy
  has_many :tags, through: :good_tags, dependent: :destroy

  accepts_nested_attributes_for :tags

  def self.find_by_tag(tag_id)
    if tag_id && !tag_id.blank?
      return Good.joins(:good_tags).where("tag_id = #{tag_id}")
    else
      return Good.all
    end
  end

  def tags_attributes=(tag_attributes)
    tag_attributes.values.each do |tag_attribute|
      tag = Tag.find_or_create_by(tag_attribute)
      self.tags << tag
    end
  end
end
