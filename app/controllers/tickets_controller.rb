class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new
    @array = Play.all.map { |p| p.title }
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.play_id = Play.where(title: @ticket.name_show).first.id
    if current_user.nil?
      flash[:alert] = "Vous devez vous connecter à votre compte pour pouvoir réserver un billet"
      render "tickets/new"
    else
      @ticket.client = current_user.email
      @ticket.save
      flash[:notice] = "Réservation réussie"
      redirect_to root_path
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name_show, :date)
  end

end
