class IndexController < ApplicationController

  def index
    if session[:count] == nil
      session[:count] = 1
    end
  end

  def generate
    puts "***********generate************"
    session[:count] += 1
    session[:word] = (0...14).map { (65 + rand(26)).chr }.join
    redirect_to "/"
  end

end
