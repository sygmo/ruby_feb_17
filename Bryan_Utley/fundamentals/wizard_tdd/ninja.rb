require_relative 'human'

class Ninja < Human
	attr_accessor :stealth
	
	def initialize
		@stealth = 175
		self
	end

	def steal
		self.health += 10
		self
	end

	def get_away
		self.health -= 15
	end

end