class Review < ApplicationRecord
  belongs_to :users
  belongs_to :wcs
  validates :booking_id, uniqueness: true
end
