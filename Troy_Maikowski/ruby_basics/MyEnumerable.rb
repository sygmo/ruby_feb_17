module MyEnumerable
  def my_each
    #your code here!
    for x in 0..self.length
    	yield self[x]
    end
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } #prints 1 2 3 4 in the terminal