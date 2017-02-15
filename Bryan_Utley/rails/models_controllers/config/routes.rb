Rails.application.routes.draw do

  #resources :users
  get '/users/new/' => 'users#new'
  get '/users/create/' => 'users#create'
  get '/users/1' => 'users#show'
  get '/users/1/edit' => 'users#edit'
  get '/users/total' => 'users#total'

  root 'users#index'

end
