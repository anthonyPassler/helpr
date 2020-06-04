class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @bids = @user.bids
    @stars = if avg_stars.nan?
      ""
    else
      render_stars(avg_stars)
    end
  end

  def dashboard
    @user = User.find(params[:id])
    @posts = @user.posts
    @bids = @user.bids
    @reviews = @user.reviews
    @top_users = User.all.sort { |user1, user2| user2.score <=> user1.score }.first(5)
  end

  private

  def avg_stars
    stars = []
    @user.bids.where(approved: true).each do |bid|
          unless bid.reviews.first.nil?
            stars << bid.reviews.first.rating
          end
    end
    stars.inject{ |sum, el| sum + el }.to_f / stars.size

  end

  def render_stars(value)
      output = ''
      if (1..5).include?(value.floor)
        value.floor.times { output  += '<i class="fas fa-star"></i>'}
      end
      if value == (value.floor + 0.5) && value.to_i != 5
        output  += '<i class="fas fa-star-half"></i>'
      end
      output.html_safe
  end
end
