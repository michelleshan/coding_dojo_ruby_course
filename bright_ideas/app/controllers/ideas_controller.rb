class IdeasController < ApplicationController
  before_action :require_login
  def index
    @user = current_user
    # @ideas = Idea.all
    @ideas = Idea.includes(:likes).group('idea_id').order('count(likes.id) DESC').references(:likes)
  end

  def create
    @idea = Idea.create(idea_params)
    if @idea.save
      redirect_to dashboard_path
    else
      flash[:errors] = @idea.errors.full_messages
      redirect_to dashboard_path
    end
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def destroy
    idea = Idea.find(params[:id])
    idea.destroy
    redirect_to dashboard_path
  end

  private
  def idea_params
    params.require(:idea).permit(:content, :user_id)
  end

end
