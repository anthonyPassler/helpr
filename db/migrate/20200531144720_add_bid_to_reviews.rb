class AddBidToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :bid, null: false, foreign_key: true
  end
end
