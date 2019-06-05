class Good < ApplicationRecord
  belongs_to :occupant

  has_many :good_tags
  has_many :tags, through: :good_tags
end
