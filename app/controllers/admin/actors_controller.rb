class Admin::ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def edit
  end

  def create
    @actor = Actor.new(actor_params)
  end

  def update
    set_actor
    @actor.update(actor_params)
    redirect_to admin_actors_path
  end

  def destroy
    set_actor
    @actor.destroy
  end

  private

  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:first_name, :last_name, :birthday, :gender)
  end
end
