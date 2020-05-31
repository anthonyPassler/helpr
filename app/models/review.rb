class Review < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :bid
end
