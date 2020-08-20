class JoinsController < ApplicationController
  def create
    Join.create(event_id: params[:event_id], user_id: session[:user_id])
    redirect_to events_path
  end

  def destroy
    join = Join.where(event_id: params[:event_id], user_id: session[:user_id]).first
    join.destroy
    redirect_to events_path
  end
end
