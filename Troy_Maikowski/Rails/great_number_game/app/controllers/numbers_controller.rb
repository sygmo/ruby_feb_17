class NumbersController < ApplicationController
  def index
    session["actual_num"] = rand(100) if !session.has_key? "actual_num"
  end

  def process_guess
    guess = params[:user_guess].to_i
    if guess < session["actual_num"].to_i
      msg = "TOO LOW!!"
    elsif guess > session["actual_num"].to_i
      msg = "TOO HIGH!!"
    else
      msg = "CORRECT!! New number generated, continue guessing!"
      session.clear
    end
    flash[:notice] = msg
    redirect_to '/'
  end
end
