class ReviewsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @review = Review.new
  end

  def create
    @post = Post.find(params[:post_id])
    @review = Review.new(review_params)
    @review.post = @post
    if @review.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end
end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
