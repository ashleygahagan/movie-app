Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_actors", controller: "actors", action: "all_actors"

  get "/one_movie", controller: "movies", action: "one_movie"

  get "/all_movies", controller: "movies", action: "all_movies"

  get "/one_actor", controller: "actors", action: "one_actor"

  get "/one_actor/:id", controller: "actors", action: "one_actor"

  post "/one_actor_post", controller: "actors", action: "one_actor"





end
