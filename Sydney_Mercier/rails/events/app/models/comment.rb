class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :text, presence: true
  validates :user, presence: true
  validates :event, presence: true
end
