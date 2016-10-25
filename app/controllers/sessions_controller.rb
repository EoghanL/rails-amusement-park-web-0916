class SessionsController < ApplicationController

  def signin
    @user = User.new
  end

  def create
    binding.pry
    @user = User.find_by(name: params[:user][:name])
    # return head(:forbidden) unless
    # @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy
    session[:user_id] = nil
  end




end
