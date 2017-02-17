require_relative 'solar_system'

RSpec.describe Planet do
	describe 'attributes' do
		before do
			@planet              = Planet.new
			@planet.name         = "Mars"
			@planet.description  = "The small Red Planet visible in the night sky!"
			@planet.population   = 1
		end

		it "should have a name, description and population" do
			expect(@planet).to have_attributes(:name => "Mars")
			expect(@planet).to have_attributes(:description => "The small Red Planet visible in the night sky!")
			expect(@planet).to have_attributes(:population => 1)
		end
	end

	describe 'behaviour' do
		before do
			@planet = Planet.new
		end

		it "Planets added to the Solar System should only be from the Planet class" do
			@planet.name = "Mars"
			@planet.planets = @planet.name
			expect(@planet.planets).to eq("Mars")
		end
	end
end

RSpec.describe SolarSystem do
	describe 'initialization' do
		before do
			@solarSystem = SolarSystem.new
		end

		it "Solar System should be initialized with a name, if not its default name should be 'Andromeda'" do
			expect(@solarSystem.name).to eq("Andromeda")
			@solarSystem.name = "Milky Way"
			expect(@solarSystem.name).to eq("Milky Way")
		end

		it "The Solar System class should contain a list of all planets in it." do
			@planet = Planet.new
			expect(@solarSystem.planets).to match_array(["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"])
		end
	end

	describe 'behavior' do
		before do
			@solarSystem = SolarSystem.new
		end
		it "There should be a count of how many planets are in the Solar System." do
			expect(@solarSystem.count_planets).to eq(8)
		end

		it "Solar System should have a method called Super Nova that destroys all of the planets in it" do
			@solarSystem.super_nova
			expect(@solarSystem.planets.empty?).to eq(true)
		end
	end
end
