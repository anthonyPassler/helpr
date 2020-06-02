class BidsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @bid = Bid.new(user:current_user)
    @bid.post = @post
    @bid.save

    # Chatroonm.create(user: current_user, )
    redirect_to post_path(@post)

  end

  def update
    @post = Post.find(params[:post_id])
    @bid = Bid.find(params[:id])
    @bid.update(approved: true)
    @chatroom = Chatroom.create(host: current_user, guest: @bid.user, post: @post, name: @post.title)
    redirect_to post_path(@post)
  end
end
