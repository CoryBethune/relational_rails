class GameStudio < ApplicationRecord
  has_many :games

  validates_presence_of :name
  validates_presence_of :game_count
  validates :still_active, inclusion: [true, false]
end
