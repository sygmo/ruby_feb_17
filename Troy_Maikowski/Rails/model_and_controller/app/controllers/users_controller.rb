class UsersController < ApplicationController
  def users
    @users = User.all
    render json: @users
  end

  def new

  end

  def create
    name = (0...8).map { (65 + rand(26)).chr }.join
    User.create(name: name)
    redirect_to '/users/new'
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def total
    @user_count = User.all.count
    render text: "Total Users: #{@user_count}"
  end
end
