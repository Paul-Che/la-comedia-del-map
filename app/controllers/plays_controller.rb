class PlaysController < ApplicationController

  def show
    @play = Actor.find(params[:id]).play
  end
end
