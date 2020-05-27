class BidsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @bid = Bid.new(user:current_user)
    @bid.post = @post
    @bid.save
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:post_id])
    @bid = Bid.find(params[:id])
    @bid.update(approved: true)
    redirect_to post_path(@post)
  end
end
