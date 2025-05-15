class Review < ApplicationRecord
  belongs_to :cars

  validates :comment, presence: true
  validates :rating, numericality: { only_integer: true }
end
