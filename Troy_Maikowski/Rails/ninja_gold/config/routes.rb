Rails.application.routes.draw do
  post '/farm/' => 'rpg#farm'
  post '/house/' => 'rpg#house'
  post '/casino/' => 'rpg#casino'
  post '/cave/' => 'rpg#cave'
  root 'rpg#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
