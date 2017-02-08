# .any?
puts ["ant", "bear", "cat"].any? {|word| word.length >= 3} #=> true

# .each
["ant", "bear", "cat"].each {|word| print word, "--"}

# .map
puts (1..4).map {|i| i*i} #=> [1, 4, 9, 16]

# .collect
puts (1..4).collect {"cat"} #=> ["cat", "cat", "cat", "cat"]

# .detect/.find
puts (1..10).detect {|i| i % 5 == 0 and i % 7 == 0} #=> nil
puts (1..100).detect {|i| i % 5 == 0 and i % 7 == 0} #=> 35

# .find_all
puts (1..10).find_all {|i| i % 3 == 0} #=> [3, 6, 9]

# .reject
puts (1..10).reject {|i| i % 3 == 0} #=> [1, 2, 4, 5, 7, 8, 10]

# .upto(limit)
puts 5.upto(10) {|i| print i, " "} #=> [5, 6, 7, 8, 9, 10]