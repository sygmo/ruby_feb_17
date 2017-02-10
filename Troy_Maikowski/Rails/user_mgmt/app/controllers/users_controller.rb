class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    User.create(user_params)
    flash[:notice] = "User created!"
    redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update(user_params)
    flash[:notice] = "User updated!"
    redirect_to '/users/' << params[:id]
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to '/users/'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end
end
