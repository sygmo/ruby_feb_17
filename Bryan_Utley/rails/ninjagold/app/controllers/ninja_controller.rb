class NinjaController < ApplicationController

  def index
    if session[:gold] == nil
      session[:gold] = 0
    end
  end

  def farm
    gold = rand(10..20)
    session[:gold] += gold
    updateactivity("green", "Earned #{gold} gold fom the farm!")
    puts session[:activity]
    redirect_to '/'
  end

  def cave
    gold = rand(5..10)
    session[:gold] += gold
    updateactivity("green", "Earned #{gold} gold fom the cave!")
    redirect_to '/'
  end

  def house
    gold = rand(2..5)
    session[:gold] += gold
    updateactivity("green", "Earned #{gold} gold fom the house!")
    redirect_to '/'
  end

  def casino
    gold = rand(-50..50)
    session[:gold] += gold
    if gold >= 0
      updateactivity("green", "Earned #{gold} gold fom the Casino!")
    else
      updateactivity("red", "Entered a Casino and lost #{gold} gold!...Ouch!!!")
    end
    redirect_to '/'
  end

  def updateactivity(cssClass, activity)
    if session[:activity] == nil
      session[:activity] = [{class: cssClass, act: activity}]
    else
      session[:activity].unshift({class: cssClass, act: activity})
    end
  end

end
