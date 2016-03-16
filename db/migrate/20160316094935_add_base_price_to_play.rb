class AddBasePriceToPlay < ActiveRecord::Migration
  def change
    add_column :plays, :base_price, :integer
  end
end
