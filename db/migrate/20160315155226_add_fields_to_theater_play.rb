class AddFieldsToTheaterPlay < ActiveRecord::Migration
  def change
    add_column :theater_plays, :price, :integer
    add_column :theater_plays, :max_seat, :integer
  end
end
