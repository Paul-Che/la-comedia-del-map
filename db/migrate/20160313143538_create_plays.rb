class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :start_date
      t.string :end_date
      t.string :synopsys

      t.timestamps null: false
    end
  end
end
