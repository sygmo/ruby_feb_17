class Event < ActiveRecord::Base
  belongs_to :user
  has_many :patrons
  has_many :users, through: :patrons
  has_many :comments

  validates :name, presence: true, length: {minimum: 5, maximum: 20}
  validates :date, presence: true
  validates :location_city, presence: true
  validates :location_city, presence: true
end
