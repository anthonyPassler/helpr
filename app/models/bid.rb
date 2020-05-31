class Bid < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :reviews
end
