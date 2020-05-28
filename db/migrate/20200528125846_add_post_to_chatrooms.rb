class AddPostToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :post, foreign_key: true
  end
end
