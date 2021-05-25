class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :director, length: {minimum: 2}
  validates :title, :plot,  presence: true
  validates :year, numericality: { only_integer: true }
end
