class ActorsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]

  def index
    actors = Actor.all.order(age: :desc)
    render json: actors.as_json
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    )
    if actor.save
      render json: actor.as_json
    else
      render json: {errors: actor.errors.full_message}, status: :unprocessable_entity
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    if actor.save
      render json: actor.as_json
    else
      render json: {errors: actor.errors.full_message}, status: :unprocessable_entity
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "Actor has been removed!"}
  end

end
