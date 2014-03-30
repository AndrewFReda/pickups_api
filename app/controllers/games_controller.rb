class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find params[:id] # game_params
  end

  def create
    @game = Game.new game_params
    if @game.save
      render 'show'
    else
      render json: { error: 'Could not create game.' }.to_json, status: 400
    end
  end

  def update
    @game = Game.find params[:id] # game_params
    if @game.update game_params
      render 'show'
    else
      render json: { error: 'Could not update game.' }.to_json, status: 400
    end
  end

  private
  def game_params
    params.require(:game).permit(:sport, :game_size, :location, :when, :admin_id)
  end
end
