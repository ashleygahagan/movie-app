class MovieGenresController < ApplicationController
  def create
    movie_genre = MovieGenre.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
    if movie_genre.save
      render json: movie_genre.as_json
    else
      render json: {errors: movie_genre.errors.full_message}, status: :unprocessable_entity
    end
  end
end
