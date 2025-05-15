class Car < ApplicationRecord
  belongs_to :owner

  vaildates :brand, presence: true
  validates :model, presence: true
  validates :year, numericality: { only_integer: true }
  vaildates :fuel, presence: true
end
