class SurveyController < ApplicationController
  def main

  end

  def result
  	if session[:count].nil?
  		session[:count] = 0
  	end
  	session[:count] += 1
  	flash[:count] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."
  end
end
