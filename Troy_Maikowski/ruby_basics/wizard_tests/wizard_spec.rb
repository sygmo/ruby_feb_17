require_relative 'Human'

RSpec.describe Wizard do

	before do
		@wiz = Wizard.new
	end

	it 'has a default health of 50 and intelligence of 25' do
		expect(@wiz.health).to eq(50)
		expect(@wiz.intelligence).to eq(25)
	end

	it 'has a heal method that increases health by 10' do
		@wiz.heal
		expect(@wiz.health).to eq(60)
	end

	it 'has an ancestor chain that includes Human' do
		@wiz.class.ancestors.should include(Human)
	end

	it 'has a fireball method that attacks an object and reduces the objects health' do
		human1 = Human.new
		@wiz.fireball(human1)
		expect(human1.health).to eq(80)
	end

end

