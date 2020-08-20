class CommentsController < ApplicationController
  def create
    @comment = Comment.create(content: params[:content], user_id: session[:user_id], event_id: params[:event_id])
    if @comment
      redirect_to event_path(@comment.event)
    else
      flash[:errors] = @comment.errors.full_messages
      redirect_to event_path(@comment.event)
    end
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :event_id)
  end
end
