class User < ApplicationRecord
  has_many :reviews, :bookings, :wcs  #faut il mettre une relation has_many wcs through bookings ?
  has_one :profile
end
