class Song < ActiveRecord::Base
	after_initialize :set_defaults

	has_many :lists
	has_many :users, through: :lists

	validates :title, presence: true
	validates :artist, presence: true

	def set_defaults
		self.add_count = 0 if self.new_record?
	end
end

