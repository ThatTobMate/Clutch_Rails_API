class Game < ActiveRecord::Base
  belongs_to :console
  has_many :ladders
end
