class SecretsController < ApplicationController
  before_action :require_login
  def index
    @secrets = Secret.all
  end

  def create
    @secret = Secret.create(secret_params)
    if @secret.save
      redirect_to user_path(current_user)
    else
      flash[:errors] = @secret.errors.full_messages
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @secret = Secret.find(params[:id])
    if session[:user_id].id == @secret.user_id
      @secret.destroy
      redirect_to user_path(current_user)
    else
      flash[:error] = "You can't delete someone else's secret"
      redirect_to secrets_path
    end
  end

  private
  def secret_params
    params.require(:secret).permit(:content, :user_id)
  end
end
