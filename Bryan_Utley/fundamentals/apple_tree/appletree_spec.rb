require_relative 'appletree'

RSpec.describe AppleTree do
  before do
    @bob = AppleTree.new(20,1)
    @bob.year_gone_by
    @bob.year_gone_by
  end

  it 'should have a height and age' do
    expect(@bob).to have_attributes(:height => 26)
    expect(@bob).to have_attributes(:age    => 3)
  end

  it "should have a count of how many apples is on it" do
    expect(@bob.apple_count).to eq(0)
  end

  it "should have a method called year_gone_by, which ages the tree by 1 year affecting its height" do
    expect(@bob.year_gone_by).to eq(4)
  end

  it "should not grow apples for the first three years of its life" do
    expect(@bob.apple_count).to eq(0)
    @bob.grow_apple
    @bob.grow_apple
    expect(@bob.apple_count).to eq(0)
  end

  it "should have a method called pick_apples that takes all of the apples off the tree" do
    expect(@bob.apple_count).to eq(0)
    expect(@bob.pick_apples).to eq(0)
    expect(@bob.apple_count).to eq(0)
  end

  it "should decay and not grow apples after 10 years" do
    @bob.grow_apple
    @bob.grow_apple
    expect(@bob.apple_count).to eq(0)
    @bob.year_gone_by
    @bob.year_gone_by
    @bob.year_gone_by
    @bob.year_gone_by
    @bob.year_gone_by
    @bob.year_gone_by
    expect(@bob.year_gone_by).to eq(10)   #Makes tree 11 years old
    @bob.grow_apple
    @bob.grow_apple
    @bob.grow_apple
    expect(@bob.apple_count).to eq(3)
    @bob.year_gone_by
    @bob.grow_apple
    @bob.grow_apple
    expect(@bob.apple_count).to eq(3)
  end

end
