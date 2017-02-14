class SurveyController < ApplicationController

  def index
  end

  def show
    if session[:counter] == nil
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    flash[:msg] = "Thanks for submitting this form!  You have submitted this form %1$s times now."  % [session[:counter]]
    @info = params[:user]
    render 'result'
  end
end
