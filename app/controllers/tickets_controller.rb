class TicketsController < ApplicationController
before_action :find_play, only: [ :new, :create ]

  def new
    @ticket = Ticket.new
    @array = Play.all.map { |p| p.title }
  end

  def create
    @ticket = Ticket.new(ticket_params)
  end

  private

  def ticket_params
    params.require(:ticket).permit.(:name_show, :date)
  end

  def find_play
    @play = Play.find(params[:play_id])
  end
end
