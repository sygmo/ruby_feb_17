require_relative 'solar_system'

RSpec.describe Planet do

	before do
		@planet = Planet.new("Planet Troy", "A cool planet", 1_000_000)
	end

	it 'has name, description, and population attributes' do
		expect(@planet.name).to eq("Planet Troy")
		expect(@planet.description).to eq("A cool planet")
		expect(@planet.population).to eq(1_000_000)
	end

end

RSpec.describe SolarSystem do

	before do
		@solar = SolarSystem.new("Troymeda")
		@planet = Planet.new("Planet Troy", "A Cool Planet", 1_000_000)
	end

	it 'has a name. If not given, name is Andromeda' do
		solar2 = SolarSystem.new()
		expect(@solar.name).to eq("Troymeda")
		expect(solar2.name).to eq("Andromeda")
	end

	it 'has a class variable to hold all member planets of the solar system' do
		@solar.add_planet(@planet)
		expect(@solar.get_planets.length).to eq(1)
	end

	it 'has a count of all planets in the solar system' do
		expect(@solar.get_planet_count).to eq(4)
	end

	it 'has only planets in the planet array' do
		expect(@solar.get_planets[0].class).to eq(Planet)
	end

	it 'has a method that destroys all planets' do
		expect(@solar.supernova).to eq([])
	end
end