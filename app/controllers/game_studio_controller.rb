class GameStudioController < ApplicationController
  def index
    @studios = GameStudio.all
  end

end
