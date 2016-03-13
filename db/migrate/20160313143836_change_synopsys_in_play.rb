class ChangeSynopsysInPlay < ActiveRecord::Migration
  def change
    change_column :plays, :synopsys,  :text
  end
end
