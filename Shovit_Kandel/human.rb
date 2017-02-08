class Human
	attr_accessor :strengths, :intelligence, :stealth, :health
	def initialize
		@strengths = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
		self
	end

	def attack(x)
		if x.class.ancestors.include?(Human)
			x.health -= 1
			true

		# puts Human.class.ancestors
		else
			false
		end		
	end
	
	def display_health
		puts @health
		self
	end
end

class Wizard < Human
	def initialize
		@health = 50
		@intelligence = 25
		self
	end

	def heal
		@health += 10
		self
	end
	def fireball(obj)
		obj.health -= 20
	end
end

class Ninja
	def initialize
		@health = 175
	end
	def steal(obj)
		@health +=10
	end
	def get_away
		@health -= 15
	end

end

class Samurai
	@@samurai_count = 0
	def initialize
		@@samurai_count+=1
		@health = 200
		self
	end
	def death_blow(obj)
		obj.health = 0
	end
	def meditate 
		@health = 200
	end	
	def how_many
		puts @@samurai_count
		self
	end
end 
c = Human.new
a = Samurai.new
b = Samurai.new

a.death_blow(c)
c.display_health
a.how_many