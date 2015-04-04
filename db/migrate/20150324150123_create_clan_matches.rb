class CreateClanMatches < ActiveRecord::Migration
  def change
    create_table :clan_matches do |t|
      t.string :result
      t.string :status
      t.string :title
      t.integer :clan_a_id
      t.integer :clan_b_id

      t.timestamps null: false
    end
  end
end
