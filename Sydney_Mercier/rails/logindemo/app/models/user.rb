class User < ActiveRecord::Base
	has_secure_password #gives us validations, and an authentication function
end
