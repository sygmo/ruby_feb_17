#1------------------------------------------------
# def preparray(arr, num)
# 	sum = 0
# 	for i in 0...arr.size
# 		sum += arr[i]
# 	end
# 	return sum, arr.reject! {|n| n > num}
# end
# print preparray([3,5,1,2,7,9,8,13,25,32], 10)


#2------------------------------------------------
# def Shuffle(arr)
# 	arr.shuffle!
# 	nArr = []
# 	for i in 0...arr.size
# 		puts arr[i]
# 		if arr[i].length > 5
# 			nArr.push(arr[i])
# 		end
# 	end
# 	return nArr
# end
# print Shuffle(["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"])


#3-------------------------------------------------
# def alphabet()
# 	arr = ('A'..'Z').to_a.shuffle!
# 	puts "Last letter in array #{arr.last}"
# 	puts "First letter in the array #{arr.first}"
# 	arr.first.scan(/[AEIOUaeiou]/) {|vowel| puts "First letter is a vowel."}
# 	return arr
# end
# print alphabet


#4-------------------------------------------------
# def randomarray(size, min, max)
# 	arr = Array.new(size) { rand(min...max) }
# 	return arr
# end
# puts randomarray(10, 55, 100)


#5-------------------------------------------------
# def randomarray(size, min, max)
# 	arr = Array.new(size) { rand(min...max) }
# 	arr.sort!
# 	arr.each {|i| puts i}
# 	puts "Minimum value in array: #{arr.min}"
# 	puts "Maximum value in array: #{arr.max}"
# end
# randomarray(10, 55, 100)


#6-------------------------------------------------
# def randstring(size)
# 	(0...size).map { (65 + rand(26)).chr }.join
# end
# puts randstring(5)


#7-------------------------------------------------
# def randarray(size, len)
# 	arr = Array.new(size) { (0...len).map { (65 + rand(26)).chr }.join }
# end
# puts randarray(10, 5)

