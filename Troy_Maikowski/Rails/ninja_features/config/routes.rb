Rails.application.routes.draw do
  root "ninjas#index"
  get '/success' => 'ninjas#success'
  post '/process_data' => 'ninjas#process_data'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
