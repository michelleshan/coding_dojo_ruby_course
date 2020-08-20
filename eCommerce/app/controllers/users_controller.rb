class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      @cart = Cart.create(user_id: @user.id)
      session[:cart_id] = @cart.id
      redirect_to products_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :dob, :email, :password, :password_confirmation, :state)
  end
end
