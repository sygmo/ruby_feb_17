a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]

count =  names.count
puts "You have %d names in the 'names' array" %[count]
i=0
last=names.length
puts names[0][:first_name]
begin
	puts "The name is " + names[i][:first_name] + " " + names[i][:last_name]
	i+=1
end while i < last