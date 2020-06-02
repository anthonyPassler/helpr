class PostsController < ApplicationController
  def index
    @posts = Post.geocoded.order(created_at: :desc)

    @markers = @posts.map do |post|
      {
        lat: post.latitude,
        lng: post.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { post: post }),
        image_url: helpers.asset_url('helpr-bubble.png')

      }
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    if current_user == @post.user || current_user == @post.bids.find_by(approved: true).try(:user)
      @chatroom = Chatroom.find_by(post: @post)
    end
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
      redirect_to new_post_review_path(@post), notice: "post marked as completed"
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
