class RpgController < ApplicationController
  def index
    session['gold'] = 0 if !session.has_key? 'gold'
    session['activities'] = [] if !session.has_key? 'activities'
  end
  def farm
    p "****FARM****"
    gold = rand(10..20)
    session['gold'] += gold
    session['activities'] << "Earned #{gold} golds from the farm! #{Time.now}"
    redirect_to '/'
  end

  def cave
    p "****CAVE****"
    gold = rand(5..10)
    session['gold'] += gold
    session['activities'] << "Earned #{gold} golds from the cave! #{Time.now}"
    redirect_to '/'
  end

  def casino
    p "****CASINO****"
    odds = rand(0..1)
    gold = rand(0..50)
    gold *= -1 if odds == 0
    session['gold'] += gold
    session['activities'] << "Entered a casino and won #{gold} golds... Nice! #{Time.now}" if gold >= 0
    session['activities'] << "Entered a casino and lost #{gold} golds... Ouch. #{Time.now}" if gold < 0
    redirect_to '/'
  end

  def house
    p "****HOUSE****"
    gold = rand(2..5)
    session['gold'] += gold
    session['activities'] << "Earned #{gold} golds from the house! #{Time.now}"
    redirect_to '/'
  end
end
