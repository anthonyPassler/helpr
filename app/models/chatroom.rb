class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :host, :class_name => "User"
  belongs_to :guest, :class_name => "User"
end
