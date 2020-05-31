class Post < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bids, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :chatrooms
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  before_validation :set_address
  private
  def set_address
    self.address = self.user.address
  end
end
