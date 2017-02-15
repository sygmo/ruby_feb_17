class UserController < ApplicationController

  def index
    @users = User.all
  end

  def new
    render 'new'
  end

  def create
    success = User.create(user_params)
    if success.errors
      puts "\n\n\n message = ", success.errors.messages
      @errors = success.errors.messages
      render "new"
    else
      flash[:message] = "User saved successfully!"
      redirect_to "/"
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end

end
