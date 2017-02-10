class Message < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :post
  belongs_to :user
  validates :author, :message, presence: true
  validates :message, length: { minimum: 15 }
end
