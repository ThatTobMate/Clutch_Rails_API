class CreateClans < ActiveRecord::Migration
  def change
    create_table :clans do |t|
      t.string :name
      t.integer :ladder_id
      t.text :description

      t.timestamps null: false
    end
  end
end
