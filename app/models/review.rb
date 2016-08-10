class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }, numericality: true, allow_blank: false
  validates :restaurant, presence: true
end
