Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/actors", controller: "actors", action: "index"
  post "/actors", controller: "actors", action: "create"
  get "/actors/:id", controller: "actors", action: "show"
  patch "/actors/:id", controller: "actors", action: "update"
  delete "/actors/:id", controller: "actors", action: "destroy"

  get "/movies", controller: "movies", action: "index"
  post "/movies", controller: "movies", action: "create"
  get "/movies/:id", controller: "movies", action: "show"
  patch "/movies/:id", controller: "movies", action: "update"
  delete "/movies/:id", controller: "movies", action: "destroy"



end
