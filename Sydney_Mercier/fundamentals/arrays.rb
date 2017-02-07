a = ["Sydney", "Rachel", "John", "Terry", "Maria", "Bernard", "Sean", "Zach"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ['a', 'b', 'b', 'b', 'c']

# .at or .fetch
puts a.at(2) #=> "John"
puts a.at(-2) #=> "Sean"

# .delete
c.delete('b') 
puts c #=> ['a', 'c']

# .reverse
puts a.reverse

# .length
puts b.length #=> 10

# .sort
puts a.sort
puts b.sort

# .slice
puts a.slice(1, 2) #=> ["Rachel", "John"]
puts b.slice(2..5) #=> [9, 3, 1, 2]

# .shuffle
puts b.shuffle

# .join
puts c.join

# .insert
c.insert(1, 'b')
puts c

# values_at() -> returns an array with values specified in the param
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
d = %w{chocolate strawberry vanilla}
puts d.values_at(0, 2).join(' and ') #=> "chocolate and vanilla"