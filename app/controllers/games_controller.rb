class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def show_by_parent_id
    @games = Game.all

    @games.find_all do |game|
      game[:game_studio_id] == params[:game_studio_id]
    end
    
  end




end
