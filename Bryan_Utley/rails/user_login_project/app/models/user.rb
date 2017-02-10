class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates_numericality_of :age, :only_integer => true, presence: true
  validates_numericality_of :age, :only_integer => true, :greater_than_or_equal_to => 10
  validates_numericality_of :age, :only_integer => true, :less_than_or_equal_to => 150
  #validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  #validates :password, presence: true, length: { in: 8..16 }
end
