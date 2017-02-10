class NinjasController < ApplicationController
  def index
  end

  def success
  end

  def process_data
    ninja = Ninja.new(name: params[:name], description: params[:description])
    if ninja.save
      flash[:notice] = "Form submitted successfully!"
      redirect_to '/success'
    else
      flash[:notice] = ninja.errors.messages
      redirect_to '/'
    end
  end
end
