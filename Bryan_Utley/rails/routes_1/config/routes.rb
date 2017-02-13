Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #resources :talk
  get '/hello/' => 'talk#hello'
  get '/say/hello' => 'talk#sayhello'
  get 'say/hello/joe' => 'talk#sayHelloJoe'
  get 'say/hello/michael' => 'talk#sayHelloMichael'

  get 'times' => 'talk#times'
  get 'times/destroy' => 'talk#timesDestroy'


  root 'talk#index'

end
