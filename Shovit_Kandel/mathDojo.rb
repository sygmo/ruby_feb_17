class MathDojo
	def initialize
		# x = 0
		@initial = 0
		return self 
	end	
	def add *x
		@initial = @initial + x.inject(0){|sum,x| sum + x }
		puts @initial
		return self
	end
	def subtract *x
		puts x[0]
		puts x[1]
		@initial = @initial - x.inject(0){|sum,x| sum + x }
		puts @initial
		return self
	end
end
# MathDojo.new.add(2, 5)

MathDojo.new.add(2).add(2,5).subtract(3,2)