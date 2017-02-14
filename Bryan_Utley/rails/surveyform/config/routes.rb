Rails.application.routes.draw do

  post '/result' => 'survey#show'
  root 'survey#index'

end
