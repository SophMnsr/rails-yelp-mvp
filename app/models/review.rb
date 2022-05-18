class Review < ApplicationRecord
  RATES = (0..5)
  belongs_to :restaurant
  validates :rating, :content, :restaurant_id, presence: true
  validates :rating, inclusion: { in: RATES }, numericality: { only_integer: true }
end
