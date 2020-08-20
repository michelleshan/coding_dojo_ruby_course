class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:userid]) if session[:userid]
  end
  
  helper_method :current_user

  def require_login
    unless current_user
      redirect_to login_path
    end
  end

  before_action :require_login
end
