class LikesController < ApplicationController
  def create
    idea = Idea.find(params[:idea_id])
    user = User.find(params[:user_id])
    if params[:user_id] != session[:user_id].to_s 
      flash[:errors] = ["You cannot like ideas for other people"]
      redirect_to dashboard_path
    elsif user.likes.where(idea_id: idea.id).count > 0
      flash[:errors] = ["You cannot like an idea more than once"]
      redirect_to dashboard_path
    else
      Like.create(idea_id: params[:idea_id], user_id: params[:user_id])
      redirect_to dashboard_path
    end
  end
end

