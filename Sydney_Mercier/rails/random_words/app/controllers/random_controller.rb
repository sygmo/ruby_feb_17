class RandomController < ApplicationController
  def main
  	if session[:count].nil?
  		session[:count] = 0
  	end
  	session[:count] += 1

  	charset = Array('A'..'Z')
  	@string = Array.new(14){charset.sample}.join
  end
end
