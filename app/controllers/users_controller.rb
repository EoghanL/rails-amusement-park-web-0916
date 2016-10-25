class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def confirmed_signin
    @user = User.find_by(name: params[name])
    if @user.valid?
      session[:user_id] = @user.id
    else
      redirect_to root_path
    end
  end



  private

  def user_params
    params.require(:user).permit(:name, :nausea, :happiness,
    :height, :tickets, :password, :admin)
  end
end
