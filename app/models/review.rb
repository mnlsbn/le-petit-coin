class Review < ApplicationRecord
  belongs_to :wc
  belongs_to :user
end
