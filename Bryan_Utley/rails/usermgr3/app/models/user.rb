class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, length: { in: 2..20 }
  validates :email_address, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, length: { in: 8..16 }

  before_save do
   self.email_address.downcase!
  end

end
