class Movie < ApplicationRecord
  validates :director, length: {minimum: 2}
  validates :title, :plot,  presence: true
  validates :year, numericality: { only_integer: true }
end
