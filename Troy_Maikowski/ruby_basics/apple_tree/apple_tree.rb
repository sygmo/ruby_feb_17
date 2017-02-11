class AppleTree
	attr_reader :height, :age, :apple_count

	def initialize(height, age)
		@height = height
		@age = age
		if @age > 3 && @age < 11
			@apple_count = (@age - 3) * 5
		else
			@apple_count = 0
		end
	end

	def year_gone_by
		@age += 1
		if @age <= 3
			@height += 3
		elsif @age <= 10
			@height += 3
			@apple_count += 10
		else
			@height -= 2
		end
	end

	def pick_apples
		@apple_count = 0
	end

end