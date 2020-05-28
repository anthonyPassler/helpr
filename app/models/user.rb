class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :bids, dependent: :destroy
  has_many :reviews, through: :posts, dependent: :destroy
  has_many :host_chatrooms, :class_name => 'Chatroom', :foreign_key => 'host_id'
  has_many :guest_chatrooms, :class_name => 'Chatroom', :foreign_key => 'guest_id'
  # has_many :messages
end
