class Admin::PlaysController < ApplicationController
def index
    @plays = Play.all
  end

  def new
    @play = Play.new
  end

  def edit
    set_play
  end

  def create
    @play = Play.new(play_params)
    @play.save

    redirect_to admin_plays_path
  end

  def update
    set_play
    @play.update(play_params)
    redirect_to admin_plays_path
  end

  def destroy
    set_play
    @play.destroy
    redirect_to admin_plays_path
  end

  private

  def set_play
    @play = Play.find(params[:id])
  end

  def play_params
    params.require(:play).permit(:start_date, :end_date, :title, :synopsys, :base_price)
  end
end
