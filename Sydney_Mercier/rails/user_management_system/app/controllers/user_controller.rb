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

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    user = User.find_by(id: params[:id])
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email_address = params[:email_address]
    user.password = params[:password]
    user.save
    redirect_to '/users'
  end

  def delete
    User.delete(params[:id])
    redirect_to '/users'
  end
end
