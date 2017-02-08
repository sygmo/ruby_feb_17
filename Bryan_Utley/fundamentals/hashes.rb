nHash = {"fname" => "Bryan", "lname" => "Utley"}
nHash.delete("fname")
puts nHash

puts nHash.empty?

puts nHash.key?("fname")
puts "Has key fname!" if nHash.key?("fname")
puts nHash.key?("lname")
puts "Has key lname!" if nHash.key?("lname")

puts nHash.has_value?("Bryan")
puts nHash.has_value?("Utley")
puts "Has value (Utley)!" if nHash.has_value?("Utley")
