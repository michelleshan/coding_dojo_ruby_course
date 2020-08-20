class SessionsController < ApplicationController
  def create
    @user = User.find_by email: params[:user][:email]
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to products_path
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to new_user_path
    end
  end

  def destroy
    if params[:id] == session[:user_id].to_s
      session[:user_id] = nil
      redirect_to new_user_path
    else
      flash[:errors] = ["Access denied!"]
      redirect_to new_user_path
    end
  end
end
