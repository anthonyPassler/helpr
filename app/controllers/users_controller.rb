class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @bids = @user.bids
    @reviews = @user.reviews
  end

  def dashboard

  end
end
