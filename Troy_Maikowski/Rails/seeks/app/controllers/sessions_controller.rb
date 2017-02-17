class SessionsController < ApplicationController
  def new
  end

  def login
    user = User.find_by(email: params[:Email])
    if user.authenticate(params[:Password])
      session[:user_id] = user.id
      redirect_to controller: "users", action: "show", id: user.id
    else
      flash[:notice] = "Invalid password"
      redirect_to '/sessions/new'
    end
  end
end
