# this file is normally found in config folder


Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "dojos#index"
  get '/hello' => "dojos#world"
  get '/ninjas' => "dojos#ninjas"
  post '/ninjas' => "dojos#create"
end
