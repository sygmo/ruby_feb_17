require_relative 'bank_account'
RSpec.describe BankAccount do
  it 'has a method balance to provide checking account balance' do
    bryan = BankAccount.new("Bryan")
    expect(bryan.balance('checking')).to eq("Your current Checking account balance is $25")
  end

  it 'has a method balance to provide checking account balance' do
    bryan = BankAccount.new("Bryan")
    expect(bryan.balance('total')).to eq("Your current deposit balance is $26")
  end

  it 'has a method withdraw funds' do
    bryan = BankAccount.new("Bryan")
    expect(bryan.withdraw('checking', 10)).to eq("$10 widthdrawn from checking, current balance $15")
  end

  it 'has a method to catch withdrawing more funds than available' do
    bryan = BankAccount.new("Bryan")
    expect(bryan.withdraw('checking', 9000)).to eq("You do not have sufficient funds, current balance $25")
  end

  it 'has a method to prevent someone from changing the balances' do
    bryan = BankAccount.new("Bryan")
    expect{bryan.bal_Check = 1000}.to raise_error(NoMethodError)
  end

  it 'has a method to prevent someone from viewing the number of accounts.' do
    bryan = BankAccount.new("Bryan")
    expect{bryan.accounts}.to raise_error(NoMethodError)
  end

  it 'has a method to prevent someone from changing the balances' do
    bryan = BankAccount.new("Bryan")
    expect{bryan.interest_Rate = 19.0}.to raise_error(NoMethodError)
  end

  it 'has a method to prevent someone from changing any value' do
    bryan = BankAccount.new("Bryan")
    expect{bryan.accountnum = 29192912}.to raise_error(NoMethodError)
  end

end
