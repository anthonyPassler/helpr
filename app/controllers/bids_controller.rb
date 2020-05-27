class BidsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @bid = Bid.new(user:current_user)
    @bid.post = @post
    @bid.save
    redirect_to post_path(@post)
  end

  def update
    @bid = Bid.find(params[:id])
    @bid.status = true
    @bid.update
    redirect_to posts_path
  end
end
