class TicketMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.new_ticket.subject
  #
  def new_ticket(ticket)
    @ticket = ticket
    @user = User.find_by_email(@ticket.client)

    mail to: @user.email,
         subject: "Votre prochain spectacle, #{@ticket.name_show}"
  end
end
