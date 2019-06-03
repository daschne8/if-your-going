class CreateEstablishmentGood < ApplicationRecord
  belongs_to :establishment
  belongs_to :good
end
