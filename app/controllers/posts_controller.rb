class PostsController < ApplicationController
  def index

  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
