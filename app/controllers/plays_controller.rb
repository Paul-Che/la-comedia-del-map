class PlaysController < ApplicationController

  def show
    @play = Play.find(params[:id])
  end
end
