Rails.application.routes.draw do
  get 'numbers/index'
  post '/process_guess/' => 'numbers#process_guess'
  root 'numbers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
