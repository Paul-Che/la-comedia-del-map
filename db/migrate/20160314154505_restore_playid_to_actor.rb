class RestorePlayidToActor < ActiveRecord::Migration
  def change
    add_column :actors, :play_id, :integer
  end
end
