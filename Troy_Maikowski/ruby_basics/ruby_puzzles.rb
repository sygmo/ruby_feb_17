arr = [3,5,1,2,7,9,8,13,25,32]

def sum_and_greater_than(arr)
	total = 0
	arr.map { |x| total += x }
	puts total
	arr.reject! { |x| x <= 10 }
	return arr
end

puts sum_and_greater_than(arr)

arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

def shuffle_and_print(arr)
	arr.shuffle!
	arr.each do |name|
		puts name
	end
end
shuffle_and_print(arr)

arr = ('a'..'z').to_a
def letters(arr)
	arr.shuffle!
	puts "First Letter: #{arr[0]}, Last Letter: #{arr[-1]}"
	if ['a','e','i','o','u'].include? arr[0]
		puts "You have a vowel!"
	end
end
letters(arr)

def rand_numbers
	arr = []
	10.times do 
		arr << 55 + Random.rand(45)
	end
	return arr
end
puts rand_numbers.to_s

def sorted_rand_nums
	arr = []
	10.times { arr << 55 + Random.rand(45) }
	arr.sort!
	return arr
end
puts sorted_rand_nums.to_s

def rand_string
	str = ""
	5.times { str << (65+rand(26)).chr }
	return str
end
puts rand_string

def rand_str_array
	arr = []
	10.times do
		str = ""
		5.times { str << (65+rand(26)).chr }
		arr << str
	end
	return arr
end
puts rand_str_array.to_s
















