class GameStudiosController < ApplicationController

  def index
    @studios = GameStudio.sort_by_created_at
  end

  def show
    @studio = GameStudio.find(params[:id])
    @game_count = @studio.count_of_games
  end


end
