class Post < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  has_many :messages

  validates  :content, presence: true
	validates  :title, presence: true, length: { minimum: 7 }
end
