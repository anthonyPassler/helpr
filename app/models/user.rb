class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :bids, dependent: :destroy
  has_many :reviews, through: :posts, dependent: :destroy
  has_one_attached :photo

  has_many :host_chatrooms, :class_name => 'Chatroom', :foreign_key => 'host_id'
  has_many :guest_chatrooms, :class_name => 'Chatroom', :foreign_key => 'guest_id'
  # has_many :messages

  def average_rating
    stars = []
    bids.where(approved: true).each do |bid|
          unless bid.reviews.first.nil?
            stars << bid.reviews.first.rating
          end
    end
    average = stars.sum.to_f / stars.size
    if average.nan?
      return 0
    else
      average
    end
  end

  def total_rating
    stars = []
    bids.where(approved: true).each do |bid|
          unless bid.reviews.first.nil?
            stars << bid.reviews.first.rating
          end
    end
    average = stars.sum

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

  def score
    score = bids.joins(:post).where(approved: true, posts: { completed: true}).count
    score* 10 + total_rating
  end

end
