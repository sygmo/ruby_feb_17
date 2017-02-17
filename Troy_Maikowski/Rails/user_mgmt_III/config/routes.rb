Rails.application.routes.draw do
  get 'users/index'
  get '/users/' => 'users#index'
  post '/users/' => 'users#create'
  get '/users/new/' => 'users#new'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id/' => 'users#update'
  get '/users/:id/' => 'users#show'
  delete '/users/:id/' => 'users#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
