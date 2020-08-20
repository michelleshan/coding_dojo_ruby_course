class SaysController < ApplicationController
  def hello
    render text: 'Hello Coding Dojo!'
  end

  def sayHello
    render text: 'Saying Hello'
  end

  def sayHelloJoe
    render text: 'Saying Hello Joe!'
  end

  def sayHelloMichael
    redirect_to '/say/hello/joe'
  end

  def index
    render text: "What do you want me to say???"
  end

  def times
    session[:counter] ||= 0
    @counter = session[:counter] += 1
    render text: "You have visited thsi URL #{@counter} times."
  end

  def restart
    session.clear
    render text: "Destroyed the session!"
  end

end
