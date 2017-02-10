#Print 1-255
def print_nums
	for num in 1..255
		puts num
	end
end
print_nums

#Print odd numbers between 1-255
def print_odds
	for num in 1..255
		puts num unless num % 2 == 0
	end
end
print_odds

#Print sum of numbers between 0-255 as well as the individual number
def print_sum_and_nums
	total = 0
	for num in 0..255
		total += num
		puts "New Number: #{num} Sum: #{total}"
	end
end
print_sum_and_nums

#Given array [1,3,5,7,9,13], iterate and print each value to screen
def iterate_array(arr)
	arr.each do |num|
		puts num
	end
end
iterate_array [1,3,5,7,9,13]

#Find max of array given [-3,-5,-7]
def find_max
	puts "Max of Array: #{[-3,-5,-7].max}"
end
find_max

#Find average of array given [2,10,3]
def avg(arr)
	total = 0
	arr.map { |x| total += x }
	puts total / arr.length
end
avg [2,10,3]

#Create an array 'y' that contains all odd numbers between 1 to 255
def odd_array
	y = []
	for num in 1..255
		y << num unless num % 2 == 0
	end
	puts y
end
odd_array

#Return number of values in an array that are greater than y
def greater_than_y(arr, y)
	count = 0
	arr.each do |num|
		count += 1 if num > y
	end
	return count
end
puts greater_than_y([1,3,5,7], 3)

#In place multiply each value in array by itself
def square_values(arr)
	arr.map! { |x| x*x }
	return arr
end
puts square_values([1,5,10,-2])

#replace any negative number in array with 0
def eliminate_negatives(arr)
	arr.map! { |x| x < 0 ? 0 : x }
	return arr
end
puts eliminate_negatives([1,5,10,-2])

#Print max, min, avg values of an array
def max_min_avg(arr)
	max = arr.max
	min = arr.min
	total = 0
	arr.map { |x| total += x }
	avg = (total.to_f / arr.length)
	puts "Max: #{max}, Min: #{min}, Average: #{avg}"
end
max_min_avg([1,5,10,-2])

#Shift each value in array one towards the front
def shift_to_front(arr)
	arr.shift
	arr << 0
	return arr
end
puts shift_to_front([1,5,10,7,-2])

#Replace any negative numbers in array with 'Dojo'
def num_to_string(arr)
	arr.map! { |x| x < 0 ? "Dojo" : x }
	return arr
end
puts num_to_string([-1,-3,2])












