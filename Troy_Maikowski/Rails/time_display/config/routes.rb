Rails.application.routes.draw do
  get 'times/main'
  root 'times#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
