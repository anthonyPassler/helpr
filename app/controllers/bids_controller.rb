class BidsController < ApplicationController
  def create
    @bid = Bid.new
    @bid.post = Post.find(params[:post_id])
    @bid.user = current_user
    @bid.save
    # Chatroonm.create(user: current_user, )
    redirect_to posts_path
  end

  def update
    @bid = Bid.find(params[:id])
    @bid.status = true
    @bid.update
    redirect_to posts_path
  end
end
