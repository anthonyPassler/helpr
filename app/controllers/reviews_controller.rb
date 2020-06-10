class ReviewsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @review = Review.new
    @review.post = @post
    authorize @review
  end

  def create
    @post = Post.find(params[:post_id])
    @bid = @post.bids.where(approved: true).first
    @review = Review.new(review_params)
    @review.post = @post
    @review.user = current_user
    @review.bid = @bid
    authorize @review
    if @review.save
      redirect_to dashboard_path(current_user)
    else
      render :new
    end
  end
end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
