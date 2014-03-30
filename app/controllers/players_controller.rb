class PlayersController < ApplicationController


  private
  def player_params
    params.require(:player).permit(:name, :skill, :user_id)
  end
end
