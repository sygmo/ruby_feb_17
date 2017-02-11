Rails.application.routes.draw do
  get '/products/' => 'products#index'
  get '/products/new/' => 'products#new'
  get '/products/:id/edit' => 'products#edit'
  get '/products/:id/' => 'products#show'
  post '/products/' => 'products#create'
  patch '/products/:id/' => 'products#update'
  delete '/products/:id/' => 'products#destroy'
  get '/comments/' => 'comment#index'
  post '/comments/' => 'comment#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
