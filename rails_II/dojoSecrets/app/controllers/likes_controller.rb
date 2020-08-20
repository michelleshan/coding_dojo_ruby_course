class LikesController < ApplicationController
  def create
    Like.create(user_id: current_user.id, secret_id: params[:secret_id])
    redirect_to secrets_path
  end

  def destroy
    like = Like.where(user_id: current_user.id, secret_id: params[:secret_id])
    like[0].destroy
    redirect_to secrets_path
  end
end
