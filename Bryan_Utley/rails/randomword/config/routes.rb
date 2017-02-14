Rails.application.routes.draw do
  post '/generate/' => 'index#generate'
  root 'index#index'
end
