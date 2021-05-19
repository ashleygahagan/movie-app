class Actor < ApplicationRecord
  belongs_to :movie

  def movie_title
    movie.title
  end

  def movie_plot
    movie.plot
  end

  validates :first_name, :last_name, length: {minimum: 2}
  validates :known_for, presence: true
  validates :age, numericality: {greater_than: 2}
end
