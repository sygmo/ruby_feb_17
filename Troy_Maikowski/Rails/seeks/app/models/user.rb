class User < ApplicationRecord
  has_secure_password

  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :email, :password, presence: true
  validates :email, :uniqueness => { :case_sensitive => false }, format: { with: email_regex }
end
