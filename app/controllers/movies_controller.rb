class MoviesController < ApplicationController
    def all_movies
      movies = Movie.all
      render json: movies.as_json
    end
  
    def one_movie
      movie = Movie.find(1)
      render json: movie.as_json
    end

end
