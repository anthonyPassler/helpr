class AddUsersToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :host
    add_foreign_key :chatrooms, :users, column: :host_id, primary_key: :id
  end
end
