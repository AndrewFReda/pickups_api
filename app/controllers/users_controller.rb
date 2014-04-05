class UsersController < ApplicationController

    def create
    @user = User.new user_params
    if @user.save
      render 'show'
    else
      render json: { error: 'Could not create user.' }.to_json, status: 400
    end
  end


end
