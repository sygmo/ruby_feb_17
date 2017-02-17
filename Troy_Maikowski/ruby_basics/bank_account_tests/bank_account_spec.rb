require_relative 'bank_account'

RSpec.describe BankAccount do

	before do
		@acct1 = BankAccount.new(1_000, 2_000)
	end

	it 'has a method for retrieving the checking account balance' do
		expect(@acct1.acct_balance).to eq(1_000)
	end

	it "has a method that retrieves the total account balance" do
		expect(@acct1.total_in_bank).to eq(3_000)
	end

	it "has a method that allows the user to withdraw cash" do
		@acct1.withdraw("Checking", 500)
		@acct1.withdraw("Savings", 500)
		expect(@acct1.acct_balance).to eq(500)
		expect(@acct1.savings_balance).to eq(1500)
	end

	it "raises an error if a user tries to withdraw more money than they have in the account" do
		expect{@acct1.withdraw("Checking", 15_000)}.to raise_error(ArgumentError)
		expect{@acct1.withdraw("Savings", 15_000)}.to raise_error(ArgumentError)
	end

	it 'raises an error when the user tries to print out how many bank accounts there are' do
		expect{@acct1.total_accounts}.to raise_error(NoMethodError)
	end

	it 'raises an error when the user tries to set the interest rate' do 
		expect{@acct1.interest_rate}.to raise_error(NoMethodError)
	end

	it 'raises an error when the user tried to set any attribute' do 
		expect{@acct1.acct_balance = 1_000_000}.to raise_error(NoMethodError)
		expect{@acct1.savings_balance = 1_000_000}.to raise_error(NoMethodError)
		expect{@acct1.acct_num = 1_000_000}.to raise_error(NoMethodError)
		expect{@acct1.interest_rate = 1_000_000}.to raise_error(NoMethodError)
	end
end