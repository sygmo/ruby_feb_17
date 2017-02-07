arr = ('a'..'z')
puts "arr has member of z? " if arr.member?('z');


arr = ('a'..'z')
puts "arr has member of a? " if arr.include?('a');

arr = (1..10)
print "Last = ", arr.last
puts
print "Max = ",arr.max
puts
print "Min = ",arr.min 
