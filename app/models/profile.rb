class Profile < ApplicationRecord
  has_one :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
