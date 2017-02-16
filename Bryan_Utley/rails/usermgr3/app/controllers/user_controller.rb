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
      @errors = success.errors.messages
      render "new"
    else
      flash[:message] = "User saved successfully!"
      redirect_to "/"
    end
  end

  def update
    success = User.update(params['id'], user_params)
    if !success.errors.empty?
      @errors = success.errors.messages
      @user = User.find(params['id'])
      render "edit"
    else
      flash[:message] = "User updated successfully!"
      redirect_to "/"
    end
  end

  def destroy
    User.find(params['id']).destroy
    redirect_to "/"
  end
  def show
    @user = User.find(params['id'])
  end
  def edit
    @user = User.find(params['id'])
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end

end
