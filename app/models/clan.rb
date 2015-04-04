class Clan < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :ladder
  has_many(:clan_matches, :foreign_key => :clan_a_id, :dependent => :destroy)
  has_many(:reverse_clan_matches, :class_name => :ClanMatch,
      :foreign_key => :clan_b_id, :dependent => :destroy)
  has_many :clans, :through => :clan_matches, :source => :clan_b
end
