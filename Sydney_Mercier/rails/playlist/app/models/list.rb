class List < ActiveRecord::Base
  after_initialize :set_defaults

  belongs_to :user
  belongs_to :song

  def set_defaults
		self.times_added = 1 if self.new_record?
  end
end
