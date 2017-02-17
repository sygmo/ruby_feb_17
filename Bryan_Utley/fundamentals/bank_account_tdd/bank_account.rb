class BankAccount
   @@accounts = 0

   attr_reader :name, :accountnum, :bal_Check, :bal_Save, :interest_Rate

	def initialize(name)
		@name = name
		@bal_Check = 25
		@bal_Save = 1
		generateAccountNumber
		@interest_Rate = 1.125
		@@accounts += 1
	end

	def deposit(account, amount)
		if account == "checking"
			@bal_Check += amount
			puts "$#{amount} deposited into #{account}, current balance $#{@bal_Check}"
		elsif account == "savings"
			@bal_Save += amount
			puts "$#{amount} deposited into #{account}, current balance $#{@bal_Save}"
		end
		self
	end

	def withdraw(account, amount)
		if account == "checking"
			if @bal_Check - amount < 1
				puts "You do not have sufficient funds, current balance $#{@bal_Check}"
        return "You do not have sufficient funds, current balance $#{@bal_Check}"
			else
				@bal_Check -= amount
				puts "$#{amount} widthdrawn from #{account}, current balance $#{@bal_Check}"
        return "$#{amount} widthdrawn from #{account}, current balance $#{@bal_Check}"
			end
		elsif account == "savings"
			if @bal_Save - amount < 1
				puts "You do not have sufficient funds, current balance $#{@bal_Save}"
			else
				@bal_Save -= amount
				puts "$#{amount} widthdrawn from #{account}, current balance $#{@bal_Save}"
			end
		end
		self
	end

	def account_information
		puts "Hello #{@name} ( Account ##{@accountnum} )"
		puts "Your current Checking account balance is $#{bal_Check}"
		puts "Your current Savings account balance is $#{bal_Save}"
		puts "Your total available balace is $#{bal_Check + bal_Save}"
		puts
		puts "Current Interest rate is #{@interest_Rate}%"
		self
	end

	def balance(account)
		if account == "checking"
			puts "Your current Checking account balance is $#{@bal_Check}"
      return "Your current Checking account balance is $#{@bal_Check}"
		elsif account == "savings"
			puts "Your current Savings account balance is $#{@bal_Save}"
		elsif account == "total"
			puts "Your current deposit balance is $#{@bal_Save + @bal_Check}"
      return "Your current deposit balance is $#{@bal_Save + @bal_Check}"
		end
		self
	end

	private
	def generateAccountNumber	# 8 digits long
		@accountnum = ( (0..9).to_a.shuffle[0,8].join ).to_i
	end

end

# bryan = BankAccount.new("Bryan")    #.deposit("checking", 40).balance("total").withdraw("checking", 10).account_information()
# bryan.bal_Check = 1000	#fails with error
