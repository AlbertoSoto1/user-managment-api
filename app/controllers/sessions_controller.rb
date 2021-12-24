class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])

    if  !!@user && @user.authenticate(params[:password])
      render json: {id: @user.id}
    else
      render json: {id: nil}
    end
  end
end