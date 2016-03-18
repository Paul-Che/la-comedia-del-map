class TicketMailerPreview < ActionMailer::Preview

  def new_ticket
    ticket = Ticket.last
    TicketMailer.new_ticket(ticket)
  end
end
