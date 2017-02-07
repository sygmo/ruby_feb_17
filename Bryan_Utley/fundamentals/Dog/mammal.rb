class Mammal
  attr_accessor :alive
  attr_accessor :health
  
  def initialize
    @alive = true
    puts 'I am alive!'
    @health = 150
    self
  end
  
  def display_health  
    puts "Current Health: #{@health} "
    self
  end  

end