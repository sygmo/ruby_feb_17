class User < ActiveRecord::Base
  	has_secure_password
  	has_many :lists
  	has_many :songs, through: :lists

  	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :password, presence: true
end
