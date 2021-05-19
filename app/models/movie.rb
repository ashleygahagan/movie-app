class Movie < ApplicationRecord
  has_many :actors

  validates :director, length: {minimum: 2}
  validates :title, :plot,  presence: true
  validates :year, numericality: { only_integer: true }
end
