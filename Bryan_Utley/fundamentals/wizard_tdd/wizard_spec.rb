require_relative 'wizard'
RSpec.describe Wizard do

  it 'make sure the health and intelligence are set on initialize' do
    wizard1 = Wizard.new
    expect(wizard1.health).to eq(50)
    expect(wizard1.intelligence ).to eq(25)
  end

  it 'has a method to increase health by 10' do
    wizard1 = Wizard.new
    expect{wizard1.heal}.to output("Your health is 60").to_stdout
  end

  it 'has an ancestor chain that includes Human' do
    wizard1 = Wizard.new
    expect(wizard1.class.ancestors.include?(Human)).to eq(true)
  end

  it 'has an ancestor chain that includes Human' do
    wizard1 = Wizard.new
    wizard2 = Wizard.new
    expect{wizard1.fireball(wizard2)}.to output("You have been fireballed, your health is now 30").to_stdout
  end



end
