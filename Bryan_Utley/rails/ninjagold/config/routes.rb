Rails.application.routes.draw do
  post '/farm/'   => 'ninja#farm'
  post '/cave/'   => 'ninja#cave'
  post '/house/'  => 'ninja#house'
  post '/casino/' => 'ninja#casino'

  root 'ninja#index'
end
