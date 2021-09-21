class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, :restaurant, presence: true
  validates :rating, inclusion: { in: 0..5,
                                  message: '%{value} must be within 0 to 5 included'}, numericality: true
end
