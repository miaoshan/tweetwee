class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts
  has_many :comments
  has_many :user_chats
  has_many :chats, through: :user_chats


end
