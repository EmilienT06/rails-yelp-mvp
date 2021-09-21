class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french beligian],
                                    message: '%{value} is not a valid category' }
end
