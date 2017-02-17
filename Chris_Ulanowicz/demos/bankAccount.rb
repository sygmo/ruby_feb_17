class BankAccount
	attr_reader :account_number, :checking, :savings
	private
	@@number_of_accounts = 0
	@@interest_rate = 3.25
	def create_account_number
		rand(10 ** 16)
	end

	public
	def initialize(checking_deposit, savings_deposit)
		@account_number = create_account_number
		@checking = checking_deposit
		@savings = savings_deposit
		@@number_of_accounts += 1
		# p @@number_of_accounts
	end

	def deposit(account, amount)
		if account == "checking"
			@checking += amount
		elsif account == "savings"
			@savings += amount
		else
			p "account doesn't exist"
		end
	end

	def withdraw(account, amount)
		if account == "checking"
			if amount > @checking
				p "checking has insufficient funds"
			else
				@checking -= amount
			end
		elsif account == "savings"
			if amount > @savings
				p "savings is dry"
			else
				@savings -= amount
			end
		else
			p "account doesn't exist"
		end
	end

	def get_total_money
		@checking + @savings
	end
	def account_information
		p "account number is #{@account_number}"
		p "total money is #{get_total_money}"
		p "checking balance is #{@checking}"
		p "savings balance is #{@savings}"
		p "interest rate is #{@@interest_rate}%"
	end
	def get_checking
		@checking
	end
	def get_savings
		@savings
	end
	def get_account_number
		@account_number
	end
end

mine = BankAccount.new(500, 25)
# mine.account_information
# mine.interest_rate
# mine.get_total_money
# yours = BankAccount.new(100,20)
# mine.withdraw("savings", 300)
# p mine.get_checking
# p mine.get_savings
# p mine.get_account_number
p mine.checking
p mine.savings
p mine.account_number

# mine.checking = 20000000000;
p mine.get_checking