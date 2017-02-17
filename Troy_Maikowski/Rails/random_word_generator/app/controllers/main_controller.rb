class MainController < ApplicationController
  def index
  end

  def process_word
    if session.has_key? 'count'
      session['count'] += 1
    else
      session['count'] = 1
    end
    session['word'] = (0...16).map { (65 + rand(26)).chr }.join
    redirect_to '/'
  end
end
