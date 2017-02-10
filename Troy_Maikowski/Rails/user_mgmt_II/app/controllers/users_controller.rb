class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    p "****CREATE CONTROLLER****"
    User.create(user_params)
    flash[:notice] = "User created!"
    redirect_to '/users'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end
end
