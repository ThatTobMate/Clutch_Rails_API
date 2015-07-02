class ClanUsers < ActiveRecord::Migration
  def change
    create_table :clans_users, id: false do |t|
          t.integer "clan_id", :null => false
          t.integer "user_id"
        end
  end
end
