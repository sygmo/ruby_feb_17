require_relative 'human'

class Samurai < Human
	@@how_many = 0

	attr_accessor :health
	
	def initialize
		@health = 200
		@@how_many += 1
		self
	end

	def death_blow(object)
		object.health = 0
		self
	end

	def meditate
		@health = 200
		self
	end

end