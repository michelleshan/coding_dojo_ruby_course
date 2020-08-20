class PostsController < ApplicationController
  layout 'three_column'
  def index
    @posts = Post.all
    @users = User.all
  end
end
