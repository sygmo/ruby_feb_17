class User < ActiveRecord::Base
  has_secure_password
  has_many :patrons
  has_many :events, through: :patrons
  has_many :events, as: :hosted_events
  has_many :comments
end
