class ChangeModelActor < ActiveRecord::Migration
  def change
    remove_column :actors, :play_id
    add_column    :actors, :play_title, :string
  end
end
