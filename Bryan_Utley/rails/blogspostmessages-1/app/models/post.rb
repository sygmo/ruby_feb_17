class Post < ApplicationRecord
  has_many   :message, :dependent => :destroy
	belongs_to :blog

	validates  :content, presence: true
	validates  :title, presence: true, length: { minimum: 7 }
end
