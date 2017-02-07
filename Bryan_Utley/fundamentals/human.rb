class Human
    attr_accessor :strength
    attr_accessor :health
    attr_accessor :intelligence
    attr_accessor :stealth
  
  	def initialize
  		@strength = 3
  		@intelligence = 3
  		@stealth = 3
  		@health = 100
  		self
  	end

  	def attack(object)
  		if object.class.ancestors.include?(Human)
  			object.health -= 20
  		end
  		self
  	end
  
  	def display_health  
	    puts "Current Health: #{@health} "
	    self
	    
  	end  

end

Bryan = Human.new
Bob = Human.new
Bryan.attack(Bob)
Bob.display_health