class User < ApplicationRecord
  has_many :reviews  #attention, il faut laisser sur plusieurs lignes, sinon bug
  has_many :bookings
  has_many :wcs #faut il mettre une relation has_many wcs through bookings ?
  has_one :profile
end
