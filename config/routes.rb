Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/one_actor", controller: "actors", action: "one_actor"
  get "/one_movie", controller: "movies", action: "one_movie"
  get "/all_movies", controller: "movies", action: "all_movies"
end
