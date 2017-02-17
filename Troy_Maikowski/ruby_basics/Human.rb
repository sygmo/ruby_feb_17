class Human
	attr_reader :strength, :intelligence, :stealth, :health
	attr_writer :health

	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
	end

	def attack(enemy)
		if enemy.class.ancestors.include? Human
			enemy.health -= 10
			true
		else
			puts "Enemy is not a human"
			false
		end
	end

end

class Wizard < Human
	def initialize
		super
		@intelligence = 25
		@health = 50
	end

	def heal
		puts "The wizard healed!"
		@health += 10
		return self
	end

	def fireball(enemy)
		puts "The wizard shot a fireball!"
		enemy.health -= 20
		return self
	end

end

class Ninja < Human
	def initialize
		super
		@stealth = 175
	end

	def steal(enemy)
		puts "The ninja stole!"
		enemy.health -= 10
		@health += 10
		return self
	end

	def get_away
		puts "The ninja got away!"
		@health -= 15
		return self
	end
end

class Samurai < Human

	@@samurai_count = 0

	def initialize
		super
		@health = 200
		@@samurai_count += 1
	end

	def death_blow(enemy)
		puts "The samurai used death blow!"
		enemy.health = 0
		return self
	end

	def meditate
		puts "The samurai used meditate!"
		@health = 200
		return self
	end

	def how_many
		puts "There are #{@@samurai_count}(s) currently..."
	end
end

h1 = Human.new
h2 = Human.new

puts h1.health
puts h2.health

h1.attack(h2)
puts h2.health