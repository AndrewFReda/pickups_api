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
    if @game.update
      render 'show'
    else
      render json: { error: 'Could not update game.' }.to_json, status: 400
    end
  end

  def destroy
    @game = Game.find params[:id] # game_params
    if @game.destroy
      render status: 200
    else
      render json: { error: 'Could not delete game.' }.to_json, status: 400
    end
  end

  private
  def game_params
    params.require(:game).permit(:id, :sport, :num_players, :location, :when, :admin_id)
  end
end
