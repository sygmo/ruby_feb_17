class AppleTree
  @@apples = 0
  attr_reader :height, :age
	def initialize(height, age)
		@height = height
		@age    = age
	end
  def year_gone_by
    @age += 1
    if @age < 10
      @height += 3
    end
    return @age
  end
  def grow_apple
    if @age.between?(4,10)
      @@apples += 1
      #puts "apples = #{@@apples}, Age = #{@age}"
    end
  end
  def apple_count
    @@apples
  end
  def pick_apples
    @@apples = 0
  end
end
# bob = AppleTree.new(20,5)
# bob.year_gone_by
# bob.year_gone_by
# bob.year_gone_by
# bob.year_gone_by
# bob.year_gone_by
# bob.grow_apple
# bob.grow_apple
# bob.grow_apple
# bob.grow_apple
# bob.grow_apple
# puts bob.apple_count
