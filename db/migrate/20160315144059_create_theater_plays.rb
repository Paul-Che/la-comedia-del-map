class CreateTheaterPlays < ActiveRecord::Migration
  def change
    create_table :theater_plays do |t|

      t.references :play, index: true, foreign_key: true
      t.references :theater, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
