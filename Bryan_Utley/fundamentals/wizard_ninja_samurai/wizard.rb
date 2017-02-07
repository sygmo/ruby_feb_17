require_relative 'human'

class Wizard < Human
	attr_accessor :intelligence, :health
	
	def initialize
		@health = 50
		@intelligence = 25
		self
	end

	def heal
		@health += 10
		puts "Your health is #{@health}"
		self
	end

	def fireball(object)
		object.health -= 20
		self
	end

end

wizard1 = Wizard.new
puts wizard1.heal