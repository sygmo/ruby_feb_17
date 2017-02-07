# .delete(key) => deletes and returns a value associated with the key
# e.g. h = {:first_name => "Coding", :last_name => "Dojo"}; h.delete(:last_name); print h      #=> [:first_name, "Coding"]
y = {:first_name => "Sydney", :last_name => "Mercier"}
puts "Y is ", y
puts y.delete(:first_name)
puts "Y is ", y

# .empty? => returns true if hash contains no key-value pairs
puts y.empty? #=> false
y.delete(:last_name)
puts y.empty? #=> true

# .has_key?(key) => true or false
z = {"Sydney" => 25, "Rachel" => 23}
puts z.has_key?("Sydney") #=> true
puts z.has_key?("Terry") #=> false

# .has_value?(value) => true or false
puts z.has_value?(57) #=> false
puts z.has_value?(25) #=> true

