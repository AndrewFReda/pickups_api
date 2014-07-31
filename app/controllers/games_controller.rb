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
      render_error 'Could not create game.'
    end
  end

  def update
    @game = Game.find params[:id] # game_params
    if @game.update
      render 'show'
    else
      render_error 'Could not update game.'
    end
  end

  def destroy
    @game = Game.find params[:id] # game_params
    if @game.destroy
      render nothing: true, status: 200
    else
      render_error 'Could not delete game.'
    end
  end

  private
  def game_params
    params.require(:game).permit(:id, :sport, :num_players, :location, :location_name, :when, :admin_id)
  end
end
