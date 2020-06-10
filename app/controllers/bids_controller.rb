class BidsController < ApplicationController
  before_action :set_post, only: %i[create update]
  before_action :set_bid, only: %i[update destroy]

  def create
    @bid = Bid.new(user:current_user)
    authorize @bid
    @bid.post = @post
    @bid.save

    # Chatroonm.create(user: current_user, )
    redirect_to post_path(@post)

  end

  def update
    @bid.update(approved: true)
    @chatroom = Chatroom.create(host: current_user, guest: @bid.user, post: @post, name: @post.title)
    redirect_to post_path(@post)
  end

  def destroy
    @bid.destroy
    redirect_to post_path(@bid.post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_bid
    @bid = Bid.find(params[:id])
    authorize @bid
  end
end
