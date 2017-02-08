#Print 1-255
def printInt()
	puts (1..255).collect {|i| i}
end

#print odd numbers between 1-255
def OddNumbers()
	puts (1..255).find_all {|i| i % 2 != 0 }
end

def sum()
	sum = 0
	for i in 0..255
		puts "Number: #{i} "  + "Sum: #{sum+i}"
		sum = sum +i
	end
end

def iterate(arr)
	puts arr.map!{|i| i}
end

def max(arr)
	puts arr.max
end


def min(arr)
	puts arr.min
end


def avg(arr)
	puts arr.inject(0){|sum,x| sum+x}/arr.count
end


def OddArray()
	y = (1..255).find_all{|i| i%2!=0}
end


def greater_than_Y(arr, y)
	puts arr.count{|x|x > y}
end

def Square(arr)
	puts arr.collect{|i| i*i}
end


def remove_negatives(arr)
	arr.map! { |x| x<0 ? 0 : x}
	puts arr
end

def max_min_avg(arr)
	puts arr.max 
	puts arr.min
	puts arr.inject(0){|sum,x| sum+x}/arr.count
end
# max_min_avg([1,2,3,4,5])

def shift1(arr)
	arr.shift()
	arr.insert(arr.count, 0)
	puts arr
end	
# shift1([1, 2, 3, 4, 5, 6])
def number_to_string(arr)
	arr.map! { |x| x<0 ? 'Dojo' : x}
	print arr
end
number_to_string([-1, -3, 2])
