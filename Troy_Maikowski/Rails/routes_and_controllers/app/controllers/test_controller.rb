class TestController < ApplicationController
  def index
    render text: 'Hello CodingDojo!'
  end

  def say
    render text: "What do you want me to say?"
  end

  def joe
    render text: "Saying Hello Joe!"
  end

  def michael
    redirect_to "/say/hello/joe/"
  end

  def times
    if session.has_key? 'times'
      session['times'] += 1
    else
      session['times'] = 0
    end
    render text: "You have visited this page #{session['times']} times."
  end

  def session_destroy
    session.clear
    render text: "Destroyed the session!"
  end
end
