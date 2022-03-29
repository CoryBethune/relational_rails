class Game < ApplicationRecord
  belongs_to :game_studio, optional: true 
end
