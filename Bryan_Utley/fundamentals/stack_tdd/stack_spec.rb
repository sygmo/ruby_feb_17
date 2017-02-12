require_relative 'stack'
RSpec.describe Stack do

  it 'Has an attribute, data_store, which displays an array of the values in the Stack' do
    x = Stack.new
    x.push(10)
    expect(x.data_store).to match_array [10]
  end

  it 'Has an attribute, back, which displays the last value in the Stack. Should be 0 by default and a user should not be able to set the back attribute' do
    x = Stack.new
    expect(x.back).to eq(0)
    x.push(10)
    expect(x.data_store).to match_array [10]
  end

  it 'Has a push method which adds a new value to the end of the Stack' do
    x = Stack.new
    expect(x.back).to eq(0)
    x.push(10)
    expect(x.data_store).to match_array [10]
    x.push(20)
    expect(x.data_store).to match_array [10,20]
  end

  it 'Has a pop method which removes the last value of the Stack, should return nil if there is nothing to pop' do
    x = Stack.new
    expect(x.back).to eq(0)
    x.push(10)
    expect(x.data_store).to match_array [10]
    x.push(20)
    expect(x.data_store).to match_array [10,20]
    x.pop
    expect(x.data_store).to match_array [10]
  end

end
