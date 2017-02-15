Rails.application.routes.draw do

  get '/users/new/' => 'user#new'
  post '/users/' => 'user#create'
  root 'user#index'

end
