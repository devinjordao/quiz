class Car < ApplicationRecord
  validates :car_make, presence: true, length: { maximum: 30 }
  validates :car_model, presence: true, length: { maximum: 50 }
  validates :car_rating, presence: true, :inclusion => 1..10
  validates :caption, presence: true, length: { maximum: 400 }
end
