class Post < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  has_one :review
end
