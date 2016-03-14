class Admin::ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
    @array = Play.all.map { |p| p.title }
  end

  def edit
    set_actor
  end

  def create
    @actor = Actor.new(actor_params)
    play = Play.where("title LIKE ?", params[:actor][:play_title])
    @actor.play_id = play.first.id
    @actor.save

    redirect_to admin_actors_path
  end

  def update
    set_actor
    @actor.update(actor_params)
    redirect_to admin_actors_path
  end

  def destroy
    set_actor
    @actor.destroy
    redirect_to admin_actors_path
  end

  private

  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:first_name, :last_name, :birthday, :gender, :play_title)
  end

end
