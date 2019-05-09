class Chat< ApplicationRecord
  has_many :user_chats
  has_many :users, through: :user_chats


  def user_count
    self.users.length
  end

  def self.most_popular_chatrooms
    most_popular_chat = Chat.all.max_by{|x|x.user_count}
  end


end
