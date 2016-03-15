class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.integer :places
      t.string :start_date
      t.string :end_date
      t.references :play, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
