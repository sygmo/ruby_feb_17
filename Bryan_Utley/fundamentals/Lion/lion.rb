require_relative 'mammal'

class Lion < Mammal
  
  def fly
    puts 'Flying...'
    @health += 10
    self
  end

  def attack_town
    puts "Attacking town..." 
    @health -= 50
    self 
  end  

  def eat_humans
    puts "Eating Humans..." 
    @health += 20
    self 
  end    

  def display_health
    puts "This is a dragon"
    super
  end

end

Simba = Lion.new
Simba.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health