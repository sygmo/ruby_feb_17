class UserController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	user = User.new(params.require(:user).permit(:first_name, :last_name, :email_address, :password))
  	if !user.valid?
  		@user = user;
  		return render 'new'
  	end
  	user.save
  	redirect_to '/users'
  end
end
