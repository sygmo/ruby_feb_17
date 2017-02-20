class DogController < ApplicationController
	@@count = 0
	def show
		# like views.py in django
		@my_var = "asdf" #automatically sent to index
		render 'index'
	end

	def hello
		render text: 'hello'
	end

	def hello2
		render text: 'Saying Hello!'
	end

	def joe
		render text: 'Saying Hello Joe!'
	end

	def michael
		redirect_to '/say/hello/joe'
	end

	def say
		render text: 'What do you want me to say???'
	end

	def times
		# session[:count] += 1
		@@count += 1
		session[:count] = @@count
		render text: "You visited this url #{session[:count]} times"
	end

	def restart
		@@count = 0
		render text: 'Destroyed the session!'
	end
end