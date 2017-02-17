Rails.application.routes.draw do
  post '/guess' => 'number#guess'
  post '/restart' => 'number#restart'
  root 'number#index'
end
