require_relative 'apple_tree'

RSpec.describe AppleTree do

	before do
		@tree = AppleTree.new(10,4)
	end

	it 'has a height and age' do
		expect(@tree.height).to eq(10)
		expect(@tree.age).to eq(4)
	end

	it 'has a count of apples' do
		expect(@tree.apple_count).to eq(5)
	end

	it 'has a method year_gone_by that reduces height and adds a year to age' do
		@tree.year_gone_by
		expect(@tree.age).to eq(5)
		expect(@tree.apple_count).to eq(15)
		expect(@tree.height).to eq(13)
	end

	it 'should not grow any apples in the first 3 years of life' do
		tree = AppleTree.new(6,2)
		expect(tree.apple_count).to eq(0)
		tree.year_gone_by
		expect(tree.apple_count).to eq(0)
	end

	it 'has method pick_apples that takes all apples off the tree' do
		@tree.pick_apples
		expect(@tree.apple_count).to eq(0)
	end

	it 'should decay and not grow any apples after 10 years' do
		tree = AppleTree.new(50, 10)
		expect(tree.apple_count).to eq(35)
		tree.year_gone_by
		expect(tree.apple_count).to eq(35)
	end

end