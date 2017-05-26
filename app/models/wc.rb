class Wc < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  has_attachment :photo

  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  #has_many :reviews
  validates :name, presence: { message: "please give a name to your toilets" }
  validates :address, presence: { message: "please indicate the address of your toilets" }
  # bug avec Form WC New / validates :availability, presence: { message: "you need to indicate whether your toilets are available or not (true or false)" }
  validates_uniqueness_of :name, :scope => [:user_id]

end

