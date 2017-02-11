a = [1,2,3,4,5,6,7,8,9]
b = ['troy', 'maikowski', 'programmer', 'ruby', 'rails']

puts "A: Value at 3: #{a.at(3)}"

puts "Deleted value 6 in array A"
a.delete("6")

puts "Reversed array A in place"
a.reverse!

puts "Length of Array A is: #{a.length}"

puts "Sorted array B in place"
b.sort!

puts "Slice of array A: #{a[1..3]}"

puts "Shuffling array A: #{a.shuffle}"

puts "Joined array B: #{b.join(" ")}"

puts "Insert value into array B"
b.insert(5, "Inserted Value")
puts b.to_s

puts "Values at array B, indices 4,0,3,1"
puts b.values_at(4,0,3,1).to_s
