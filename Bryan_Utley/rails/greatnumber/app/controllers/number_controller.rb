class NumberController < ApplicationController

  def index
    if session[:number] == nil
      session[:number] = (rand * (99) + 1).to_i
    end
  end

  def guess
    guess = params[:number].to_i
    number = session[:number]
    if guess == number
      msg = "Correct"
      flash[:err] = {class: "green", msg: "Correct!"}
    elsif guess < number
      flash[:err] = {class: "red", msg: "Too Low!"}
    else
      flash[:err] = {class: "red", msg: "Too High!"}
    end
    redirect_to "/"
  end

  def restart
    session.delete('number')
    redirect_to "/"
  end

end
