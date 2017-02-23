class Patron < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
end


# class Friendship < ApplicationRecord::Base
# 	belongs_to :friender, source: :user
# 	belongs_to :friendee, source: :user
# end
