class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.string :gender
      t.references :play, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
