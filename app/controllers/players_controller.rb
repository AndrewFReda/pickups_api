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
      render json: { error: 'Could not create player.' }.to_json, status: 400
    end
  end

  def update
    @player = Player.find params[:id]
    if @player.update
      render 'show'
    else
      render json: { error: 'Could not update player.' }.to_json, status: 400
    end
  end

  def destroy
    @player = Player.find params[:id]
    if @player.destroy
      render status: 200
    else
      render json: { error: 'Could not delete player.' }.to_json, status: 400
    end
  end

  private
  def player_params
    params.require(:player).permit(:id, :name, :skill, :user_id)
  end
end
