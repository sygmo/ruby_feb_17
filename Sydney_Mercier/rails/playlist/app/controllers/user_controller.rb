class UserController < ApplicationController
	def main
		session.clear
		puts session[:logged_in_as]
		@user = User.new
	end

	def create
		user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password))
		if !user.valid?
			@user = user;
			return render "main"
		end
		user.save

		session[:logged_in_as] = user.id
		redirect_to "song/index"
	end

	def login
		user = User.find_by(:email => params[:user][:email])
		is_valid = user.authenticate(params[:user][:password])
		if !is_valid
			return render "main"
		end

		session[:logged_in_as] = user.id
		redirect_to "/songs"
	end

	def songs
	end
end
