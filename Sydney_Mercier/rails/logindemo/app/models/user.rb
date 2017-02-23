class User < ActiveRecord::Base
	has_secure_password #gives us validations, and an authentication function

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email_address, presence: true
	validates :password, presence: true 
end
