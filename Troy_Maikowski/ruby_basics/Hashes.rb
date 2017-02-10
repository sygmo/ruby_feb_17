my_hash = {
	first_name: "Troy",
	middle_name: "Mitchell",
	last_name: "Maikowski"
}

puts "Removing middle name from my_hash"
my_hash.delete :middle_name

puts "This hash still has values in it" unless my_hash.empty?

puts "first_name key exists" if my_hash.has_key? :first_name

puts "Your last name is Maikowski" if my_hash.has_value? "Maikowski"