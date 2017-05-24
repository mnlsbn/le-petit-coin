class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :wc
  # autres validations à ajouter

end
