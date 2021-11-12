class Paper < ApplicationRecord
  validates :title, :venue, :year, presence: true
  validates :title, length: { minimum: 1 }
  validates :year, numericality: { only_integer: true }

  has_and_belongs_to_many :authors
end
