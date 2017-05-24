class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :wc
  validates :status, presence: true
  # autres validations à ajouter

end
