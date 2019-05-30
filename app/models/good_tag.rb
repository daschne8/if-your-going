class GoodTag < ApplicationRecord
  belongs_to :tag
  belongs_to :good
end
