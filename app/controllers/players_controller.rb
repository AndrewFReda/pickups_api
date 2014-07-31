class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find params[:id]
  end

  def create
    @player = Player.new player_params
    if @player.save
      render 'show'
    else
      render_error 'Could not create player.'
    end
  end

  def update
    @player = Player.find params[:id]
    if @player.update
      render 'show'
    else
      render_error 'Could not update player.'
    end
  end

  def destroy
    @player = Player.find params[:id]
    if @player.destroy
      render nothing: true, status: 200
    else
      render_error 'Could not delete player.'
    end
  end

  private
  def player_params
    params.require(:player).permit(:id, :name, :skill, :user_id)
  end
end
