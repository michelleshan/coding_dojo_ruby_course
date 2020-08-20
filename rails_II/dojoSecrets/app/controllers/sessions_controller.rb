class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where(email: params[:user][:email]).first
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
end
