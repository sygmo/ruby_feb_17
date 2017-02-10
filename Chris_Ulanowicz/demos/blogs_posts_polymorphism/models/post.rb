class Post < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :user
  belongs_to :blog
  has_many :messages, dependent: :destroy
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end
