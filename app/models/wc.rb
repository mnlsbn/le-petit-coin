class Wc < ApplicationRecord
  belongs_to :user
  has_many :reviews, :bookings
end
