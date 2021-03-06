class Profile < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
