class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name_show
      t.integer :price
      t.date :date
      t.string :client

      t.timestamps null: false
    end
  end
end
