class User < ApplicationRecord
  has_many :messages
  has_many :posts
  has_many :owners
  has_many :blogs, through: :posts
  has_many :comments, as: :commentable

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :email_address, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email_address, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

  before_save do
    self.email_address.downcase!
  end
end
