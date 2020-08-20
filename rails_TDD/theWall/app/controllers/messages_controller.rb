class MessagesController < ApplicationController
  def index
    @user = User.find(session[:user_id])
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
