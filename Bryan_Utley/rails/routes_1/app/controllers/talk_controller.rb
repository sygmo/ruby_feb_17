class TalkController < ApplicationController
  def index
    render text: 'What do you want me to say???'
  end
  def hello
    render text: 'Hello CodingDojo!'
  end
  def sayhello
    render text: 'Saying Hello!'
  end
  def sayHelloJoe
    render text: 'Saying Hello Joe!'
  end
  def sayHelloMichael
    redirect_to 'say/hello/joe'
  end
  def times
    if session[:visit] == nil
      session[:visit] =1
    else
      session[:visit] += 1
    end
    render text: session[:visit]
  end
  def timesDestroy
    session.delete(:visit)
    render text: "Destroyed the session!"
  end

end
