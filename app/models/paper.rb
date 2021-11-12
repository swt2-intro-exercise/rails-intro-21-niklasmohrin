class Paper < ApplicationRecord
  validates :title, :venue, :year, presence: true
  validates :title, length: { minimum: 1 }
  validates :year, numericality: { only_integer: true }
end
