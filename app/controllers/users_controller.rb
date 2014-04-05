class UsersController < ApplicationController

  def create
    @user = User.new user_params
    if @user.save
      render 'show'
    else
      render json: { error: 'Could not create user.' }.to_json, status: 400
    end
  end

  def show
    @user = User.find params[:uid]
  end


  private

  def user_params
    params.require(:user).permit(:uid, :provider, :name, :oauth_token, :oauth_expires_at, :player_id)
  end


end
