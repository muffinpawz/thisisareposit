class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence: ture, length: {minium: 5, maximiun: 1000 }
end
