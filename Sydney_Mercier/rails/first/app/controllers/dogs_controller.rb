class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @dog = Dog.find_by(id: params[:id])
  end

  def create
    puts params[:name]
    Dog.create(
      name: params[:name],
      breed: params[:breed]
    )
    redirect_to '/dogs'
  end

  def update
    dog = Dog.find_by(id: params[:id])
    dog.name = params[:name]
    dog.breed = params[:breed]
    dog.save
    redirect_to '/dogs'
  end

  def destroy
    Dog.delete(params[:id])
    redirect_to '/dogs'
  end
end
