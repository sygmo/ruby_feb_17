require_relative 'mammal'

class Dog < Mammal
  
  def pet
    puts 'Petting...'
    @health += 5
    self
  end

  def walk
    puts "Walking..." 
    @health += 1
    self 
  end  

  def run
    puts "Running..." 
    @health += 10
    self 
  end    

end

Killer = Dog.new
Killer.walk.walk.walk.run.run.pet.display_health