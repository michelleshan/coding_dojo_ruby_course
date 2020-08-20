class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_cart
    @user = current_user
    @cart = @user.cart
  end

  helper_method :current_user, :current_cart

  def require_login
    redirect_to new_user_path unless session[:user_id]
  end
end