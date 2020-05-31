class PostsController < ApplicationController
  def index
    @posts = Post.geocoded.order(created_at: :desc)

    @markers = @posts.map do |post|
      {
        lat: post.latitude,
        lng: post.longitude
      }
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @chatroom = Chatroom.where(host: current_user, guest: @user).first
    @message = Message.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if params[:completed] == "true"
      @post.completed = true
      @post.save
      redirect_to dashboard_path(current_user), notice: "post marked as completed"
    elsif @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

    private

    def post_params
      params.require(:post).permit(:title, :content, :date)
    end
end
