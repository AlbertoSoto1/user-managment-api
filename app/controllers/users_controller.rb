class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: {user:@user, status: 200}
  end

  def create
    @user = User.create(
      name: params[:name],
      surname: params[:surname],
      mail: params[:mail],
      age: params[:age],
      username: params[:username],
      password_digest: params[:password_digest],
      profile: params[:profile]
    )

    if @user.save
      render json: {id: @user.id}
    else
      render json: {id: nil}
    end
  end

  def update
    @user = User.find_by(username: params[:username])

    @user.update(
      name: params[:name],
      surname: params[:surname],
      mail: params[:mail],
      age: params[:age],
      username: params[:username],
      password_digest: BCrypt::Password.create(params[:password_digest]),
      profile: params[:profile]
    )

    if @user.save
      render json: {user: @user, status: 200}
    else
      render json: {user: nil, status: 304}
    end

    #render json: @user
  end

  def destroy
    @users = User.all
    @user = User.find(params[:id])

    @user.destroy

    render json: @users
  end
end
