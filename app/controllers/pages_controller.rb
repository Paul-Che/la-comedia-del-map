class PagesController < ApplicationController
  def home
    @plays = Play.all
  end
end
