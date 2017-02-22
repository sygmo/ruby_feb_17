class UserController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
  	if !user.valid?
  		@user = user;
  		return render "new"
  	end
  	user.save

  	session[:logged_in_as] = user.id
  	redirect_to "/dashboard"
  end

  def login

  end

  def login_post
    user = User.find_by(:email => params[:user][:email])

    is_valid = user.authenticate(params[:user][:password])

    if !is_valid
      return render "login"
    end

    session[:logged_in_as] = user.id
    redirect_to "/dashboard"
  end
end
