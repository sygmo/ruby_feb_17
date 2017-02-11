Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/' => 'users#users'
  get '/users/new/' => 'users#new'
  get 'users/create' => 'users#create'
  get '/users/total' => 'users#total'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'

end
