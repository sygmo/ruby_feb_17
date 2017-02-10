class MathDojo

	@@total = 0

	def add arr
		arr.map { |x| @@total += x }
		return self
	end

	def subtract arr
		arr.map! { |x| @@total -= x }
		return self
	end

	def get_total
		puts @@total
	end

end

mathdojo = MathDojo.new
mathdojo.add([2,3,4,5]).subtract([1,5,3]).get_total