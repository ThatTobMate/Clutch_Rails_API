class ClanMatch < ActiveRecord::Base
  belongs_to :clan_a, :class_name => :Clan
  belongs_to :clan_b, :class_name => :Clan
  has_many :comments
end
