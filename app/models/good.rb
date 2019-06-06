class Good < ApplicationRecord
  belongs_to :occupant
  has_many :good_tags, dependent: :delete_all
  has_many :tags, through: :good_tags, dependent: :delete_all

  accepts_nested_attributes_for :tags

  def tags_attributes=(tag_attributes)
    tag_attributes.values.each do |tag_attribute|
      tag = Tag.find_or_create_by(tag_attribute)
      self.tags << tag
    end
  end
end
