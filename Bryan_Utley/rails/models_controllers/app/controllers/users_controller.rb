class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
  end
  def create
    fname = (0...8).map { (65 + rand(26)).chr }.join
    lname = (0...10).map { (65 + rand(26)).chr }.join
    fullname = fname + ' ' + lname
    User.create(name: fullname)
    redirect_to "/"
  end
  def show
    @user = User.find(1)
    render json: @user
  end
  def edit
    @user = User.find(1)
  end
  def total
    users = User.all
    @total = users.size
    render text: "Total users: " + @total.to_s
  end
end
