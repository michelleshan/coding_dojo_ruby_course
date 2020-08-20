class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def nothing
  end

  private
  def user_params
    params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
  end
end
