# .member?(val) => true or false
puts ["alpha", "beta", "gamma"].member?("beta") #=> true
puts ["alpha", "beta", "gamma"].member?("lambda") #=> false

# .include?(value) => true or false
puts ["alpha", "beta", "gamma"].include?("beta") #=> true
puts ["alpha", "beta", "gamma"].include?("lambda") #=> false

# .last => returns the last object in range
puts [4, 8, 2, 7].last #=> 7
puts [4, 8, 2, 7].last(2) #=> [2, 7]

# .max => returns the maximum value in range
puts [4, 8, 2, 7].max #=> 8
puts [4, 8, 2, 7].max(3) #=> [8, 7, 4]

# .min => returns the minimum value in range
puts [4, 8, 2, 7].min #=> 2
puts [4, 8, 2, 7].min(3) #=> [2, 4, 7]
