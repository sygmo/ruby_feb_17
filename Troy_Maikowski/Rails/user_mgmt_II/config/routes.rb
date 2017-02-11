Rails.application.routes.draw do
  get 'users/index'
  get '/users/' => 'users#index'
  post '/users/' => 'users#create'
  get '/users/new/' => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
