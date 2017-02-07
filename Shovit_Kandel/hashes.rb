x =  {"first_name" => "Shovit", "last_name" => "Kandel"}
puts x['first_name'] ,  x['last_name']

y = {:first_name => "Shovit", :last_name => "Kandel"}
puts y[:first_name] ,  y[:last_name]

y.delete(:first_name)
puts y

if y.has_key? :first_name
	puts "Y has a key called " + y(:first_name)
else
	puts "Y does not have a key"
end

puts y.has_value?("last_name")

y.empty?