class GameStudiosController < ApplicationController

  def index
    @studios = GameStudio.all
  end

  def show
    @studio = GameStudio.find(params[:id])
  end



end
