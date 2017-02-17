Rails.application.routes.draw do
  root 'dojos#index'
  get '/hello' => 'dojos#world'
  get '/ninjas' => 'dojos#ninjas'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
