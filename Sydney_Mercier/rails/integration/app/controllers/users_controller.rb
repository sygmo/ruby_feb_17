class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def create
    puts params[:name]
    User.create(
      name: params[:name]
    )
    redirect_to '/users'
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[:name]
    user.save
    redirect_to '/users'
  end

  def destroy
  end

  def total
    @count = User.count
    render text: "#{@count}"
  end
end
