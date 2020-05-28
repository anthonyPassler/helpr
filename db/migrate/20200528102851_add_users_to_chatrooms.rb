class AddUsersToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :host
    add_foreign_key :chatrooms, :users, column: :host_id, primary_key: :id

    add_reference :chatrooms, :guest
    add_foreign_key :chatrooms, :users, column: :guest_id, primary_key: :id
  end
end
