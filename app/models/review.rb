class Review < ApplicationRecord
  belongs_to :post
  belongs_to :user, through: :posts
end
