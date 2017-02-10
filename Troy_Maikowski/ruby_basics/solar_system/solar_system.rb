class Planet
	attr_reader :name, :description, :population
	def initialize(name, description, population)
		@name = name
		@description = description
		@population = population
	end
end

class SolarSystem
	attr_reader :name
	attr_accessor :planets

	@@planets = []
	@@count = 0

	def initialize(name="Andromeda")
		@name = name
		@@count += 1
	end

	def add_planet(planet)
		if planet.class == Planet
			@@planets << planet
		else
			raise "Not planet class"
		end
	end

	def supernova
		puts "All planets have been destroyed"
		@@planets = []
	end

	def get_planets
		return @@planets
	end

	def get_planet_count
		return @@count
	end
end