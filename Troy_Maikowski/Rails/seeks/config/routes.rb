Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/index'

  get 'users/show'

  post '/login' => 'sessions#login'
  get '/users/:id/' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
