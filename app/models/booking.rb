class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :wc
  # autres validations à ajouter
  has_many :reviews, dependent: :destroy
end
