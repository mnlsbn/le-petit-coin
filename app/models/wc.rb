class Wc < ApplicationRecord
  belongs_to :user
  #has_many :reviews
  validates :name, presence: { message: "please give a name to your toilets" }
  validates :address, presence: { message: "please indicate the address of your toilets" }
  validates :availability, presence: { message: "you need to indicate whether your toilets are available or not (true or false)" }
  #validates :name, uniqueness: { scope: :user_id }
  validates_uniqueness_of :name, :scope => [:user_id]
end