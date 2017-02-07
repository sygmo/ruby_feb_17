def square(num)
	puts "num is #{num}"
	puts "num yields: #{yield(num)}"
end

square(5) {|i| i*i}
