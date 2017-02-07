class MathDojo
	def initialize
		@@total = 0
	end 
	def add *param
		param.each do |num|
			if num.class == Array 
				num.each do |val|
					@@total += val	
				end
			else
				@@total += num	
			end
		end
		self
	end
	def subtract *param
		param.each do |num|
			if num.class == Array 
				num.each do |val|
					@@total -= val	
				end
			else
				@@total -= num	
			end
		end
		self
	end
	def result
		return @@total
	end
end
puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result



