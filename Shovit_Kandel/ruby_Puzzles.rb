#Print sum and return #'s greater than 10
arr = [3,5,1,2,7,9,8,13,25,32]
puts arr.inject(0){|sum,x| sum+x}
puts arr.find_all{|x|x > 10}


arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts arr.shuffle
puts arr.find_all{|i|i.length>10}

arr = ('a'..'z').to_a
arr = arr.shuffle
puts arr[arr.length-1]
puts arr[0]
if %w(a e i o u).include?(arr[0]) 
	puts "First letter is a vowel"
end

i=0
num=10
prng = Random.new(100)
arr = []
begin
	arr.push(prng.rand(55..100))
	i+=1
end while i<num
puts arr.sort
puts arr.min
puts arr.max


#return 10 random strings with 5 letters
i=0
z=0
num=5
z_end=10
long_array=[]
begin
	new_arr = []
	begin
		x = (65+rand(26)).chr
		new_arr.push(x)
		i+=1
	end while i<num
	new_arr = new_arr.join("")
	long_array.push(new_arr)
	z+=1
	i=0
end while z<z_end
puts long_array