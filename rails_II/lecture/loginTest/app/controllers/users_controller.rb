class UsersController < ApplicationController
  skip_before_action :require_login, only: [:index]
  skip_before_action :require_perm, only: [:show]
  def index
  end

  def show
  end

  def destroy
  end

  def require_perm
    # puts current_user
    # puts params
    unless current_user.id == params[:id].to_i
      render 'notAllowed'
    end
  end

end
