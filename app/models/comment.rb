class Comment < ApplicationRecord
  validates :name, presence: true
  belongs_to :post
  belongs_to :user

end
