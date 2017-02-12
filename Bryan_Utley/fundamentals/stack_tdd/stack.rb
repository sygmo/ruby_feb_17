class Stack
  @@back = 0

	def initialize()
    @stack = []
	end

  def data_store
    print "Data-Store: "
    return @stack
  end

  def push(value)
    @stack[@stack.length] = value
    return @stack
  end

  def back
    if @stack.length
      return 0
    else
      return @stack[@stack.length - 1]
    end
  end

  def pop
    if @stack.size
      @stack.delete_at(@stack.size-1)
      return @stack
    else
      return nil
    end
  end

end

# x = Stack.new
# x.data_store
# x.push(10)
# x.data_store
# x.push(20)
# x.data_store
# x.back
# x.pop
# x.data_store
