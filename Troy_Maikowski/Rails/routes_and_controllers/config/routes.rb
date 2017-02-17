Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/hello/" => "test#index"
  get "/say/hello/" => "test#say"
  get "/say/hello/joe/" => "test#joe"
  get "/say/hello/michael/" => "test#michael"
  get "/" => "test#say"
  get "/times/" => "test#times"
  get "/times/restart" => "test#session_destroy"
end
