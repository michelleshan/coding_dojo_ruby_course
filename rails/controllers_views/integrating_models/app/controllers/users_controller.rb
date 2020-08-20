class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def total
    @count ||= 0
    @users = User.all
    @users.each { |user| @count += 1 }
    render plain: "There are a total of #{@count} users."
  end
end
