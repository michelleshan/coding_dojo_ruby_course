class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :authorize_user, only: [:show, :edit]
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    puts "************ #{params[:id]} & #{current_user.id} ************"
    @user = User.find(params[:id])
    @secrets = @user.secrets
    @secrets_liked = @user.secrets_liked
  end

  def edit
    @user = User.find(params[:id])
    session[:user_id] = @user.id
  end

  def update
    @user = User.find(params[:id])
    session[:user_id] = @user.id
    if @user.update(edit_user_params)
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    session[:user_id] = @user.id
    session.clear
    @user.destroy
    redirect_to new_user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:name, :email)
  end

  def authorize_user
    redirect_to user_path(current_user) unless params[:id] == session[:user_id].to_s
  end
end
