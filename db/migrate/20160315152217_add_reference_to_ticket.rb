class AddReferenceToTicket < ActiveRecord::Migration
  def change
    add_reference :tickets, :play, index: true
  end
end
