class SessionsController < ApplicationController
  skip_before_action :require_login
  
  def new
  end

  def create
    user = User.where(name: params[:user][:name]).first
    if user.authenticate(params[:user][:password])
      session[:userid] = user.id
      redirect_to login_url
    else
      render plain: "Authentication failed"
    end
  end

  def destroy
    session[:userid] = nil
    redirect_to 'sessions/new'
  end

end
