class Post< ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  #def user_count
    #self.users.length
  #end


  #def self.most_popular_post_title
    #popular_title = Post.all.max_by{|x|x.user_count}
    #popular_title.name

  #end
end
