class CreateLadders < ActiveRecord::Migration
  def change
    create_table :ladders do |t|
      t.string :name
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
