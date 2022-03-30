class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def show_by_parent_id
    @games = Game.all
    @game = @games.find_all do |game|
      game[:game_studio_id] == params[:id].to_i
    end

    return @game
  end




end
