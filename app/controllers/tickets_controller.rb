class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
    @array = Play.all.map { |p| p.title }
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.client = current_user
    @ticket.play_id = Play.where(title: @ticket.name_show).first.id
    @ticket.save

    redirect_to root_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name_show, :date)
  end

end
