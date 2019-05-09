class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts
  has_many :comments
  has_many :user_chats
  has_many :chats, through: :user_chats

  def post_count
    self.posts.length
  end

  def comment_count
    self.comments.length
  end


  def self.most_active_user
     most_active = User.all.max_by{|x|x.post_count}
     most_active.name
  end

  def self.most_commented_user
    most_comment = User.all.max_by{|x|x.comment_count}
    most_comment.name
  end




end
