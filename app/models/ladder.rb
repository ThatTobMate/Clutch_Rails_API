class Ladder < ActiveRecord::Base
  # has_one :forum
  has_many :clans
  belongs_to :game
end
