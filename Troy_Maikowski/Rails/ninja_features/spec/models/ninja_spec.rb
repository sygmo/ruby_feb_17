require 'rails_helper'

RSpec.describe Ninja, type: :model do
  it 'should not save if name is empty' do
    ninja = Ninja.new(name: "", description: "This is a description")
    expect(ninja).to be_invalid
  end

  it 'should not save if description is empty' do
    ninja = Ninja.new(name: "Ninja Name", description: "")
    expect(ninja).to be_invalid
  end
end
