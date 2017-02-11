Rails.application.routes.draw do
  get 'dojo/result'
  post '/process_data/'=> 'dojo#process_data'
  root 'dojo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
