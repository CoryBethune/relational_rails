class GameStudio < ApplicationRecord
  has_many :games

  validates_presence_of :name
  # validates_presence_of :game_count
  validates :still_active, inclusion: [true, false]

  def self.sort_by_created_at
    GameStudio.order(created_at: :desc)
  end

  def count_of_games
    game_count = games.count
  end


end
