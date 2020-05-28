class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @post = Post.find(params[:post_id])
    @chatroom = Chatroom.create(host: current_user, guest_id: params[:guest].to_i, post: @post)
    redirect_to post_path(@post)
  end

end
