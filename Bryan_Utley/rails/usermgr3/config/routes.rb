Rails.application.routes.draw do

  get '/users/new/' => 'user#new'
  get '/users/:id' => 'user#show'
  get '/users/:id/edit' => 'user#edit'

  post '/users/' => 'user#create'

  patch '/users/:id' => 'user#update'
  delete "/users/:id" => "user#destroy"

  root 'user#index'

end
