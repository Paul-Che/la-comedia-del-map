class AddTitleToPlay < ActiveRecord::Migration
  def change
    add_column :plays, :title, :string
  end
end
