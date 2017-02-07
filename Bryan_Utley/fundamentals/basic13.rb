# Print 1-255
# for i in (1..255)
# 	puts i
# end

#Print odd numbers between 1-255
# x = (1..255)
# x.each {|i| puts i if i % 2 == 1 }


#Print Sum
# sum = 0
# for i in (0..255)
# 	sum = sum + i
# 	puts "New number: #{i} Sum: #{sum}"
# end

#Iterating through an array
# x = [1,3,5,7,9,13]
# x.each  {|i| puts i}

#Find Max
# arr = [2, -3, -5, -7, 0]
# max = arr[0]
# for i in 0...arr.size
# 	if arr[i] > max
# 		max = arr[i]
# 	end
# end
# puts "Max of array is: #{max}"

#Get Average
# arr = [2, 99, 12, 0, -20]
# sum = 0
# for i in 0...arr.size
# 	sum += arr[i]
# end
# puts "Sum of array is: #{sum/arr.size}"

#Array with Odd Numbers
# arr = []
# for i in (0..255)
# 	if i % 2 == 1
# 		arr.push(i)
# 	end
# end
# print arr

#Greater Than y
# def greaterthan(arr, num)
# 	count = 0
# 	for i in 0...arr.size
# 		if arr[i] > num
# 		 count += 1
# 		end
# 	end
# 	return count
# end
# puts greaterthan([1, 3, 5, 7], 3)


#Square the values
# def squareit(arr)
# 	for i in 0...arr.size
# 		arr[i] = arr[i] * arr[i]
# 	end
# 	return arr
# end
# puts squareit([1, 5, 10, -2])

# #--- Another way to do it.
# arr = [1, 5, 10, -2]
# arr.to_enum.with_index.each do |elem,i|
# 	arr[i] = elem * elem
# end
# print arr


#Eliminate Negative Numbers
# def removenegs(arr)
# 	for i in 0...arr.size
# 		if arr[i] < 0
# 			arr[i] = 0
# 		end
# 	end
# 	return arr
# end
# puts removenegs([1, 5, 10, -2])

#Max, Min, and Average
# def MinMaxAvg(arr)
# 	min = arr[0]; max = arr[0]; sum = 0
# 	for i in 0...arr.size
# 		sum += arr[i]
# 		if arr[i] < min
# 			min = arr[i]
# 		end
# 		if arr[i] > max
# 			max = arr[i]
# 		end
# 	end
# 	return min, max, sum / arr.size
# end
# puts MinMaxAvg([1, 5, 10, -2])


#Shifting the values in the array
# def shift(arr)
# 	x = (arr.size) - 1
# 	for i in 0...x
# 		arr[i] = arr[i+1]
# 	end
# 	arr[x] = 0
# 	return arr
# end
# print shift([1, 5, 10, 7, -2])

#Number to string
# def numstring(arr)
# 	for i in 0...arr.size
# 		if arr[i] < 0
# 			arr[i] = "Dojo"
# 		end		
# 	end
# 	return arr
# end
# print numstring([-1, -3, 2])

