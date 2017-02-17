class Blog < ApplicationRecord
  has_many :posts
  has_many :owners
  has_many :users, through: :posts
  has_many :messages, through: :posts

  validates :name, :description, presence: true
  validates :name, length: { minimum: 5 }
  validates :description, length: { minimum: 10 }
end
