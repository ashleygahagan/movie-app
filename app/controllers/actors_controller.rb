class ActorsController < ApplicationController
  def all_actors
    actors = Actor.all
    render json: actors.as_json
  end
  
  def one_actor
    id = params[:id]
    actor = Actor.find(id)
    render json: actor.as_json
  end


end
