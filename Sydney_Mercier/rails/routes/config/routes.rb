Rails.application.routes.draw do
  get '/test' => 'dog#show'
  resources :dog
  # This line is the same as all of the below:
  # get '/dog' => 'dog#index'  # list some resource
  # get 'dog/:id' => 'dog#show' # show one
  # get 'dog/new' => 'dog#new'  # form for a new one
  # get '/dog/:id/edit' => 'dog#edit'
  # post '/dog/' => 'dog#create'
  # patch '/dog/:id' => 'dog#update'
  # delete '/dog/:id' => 'dog#destroy'
  get '/dog/mydogs' => 'dog#mydog'


  get 'hello' => 'dog#hello'
  get 'say/hello' => 'dog#hello2'
  get 'say/hello/joe' => 'dog#joe'
  get 'say/hello/michael' => 'dog#michael'
  get '/' => 'dog#say'
  get 'times' => 'dog#times'
  get 'times/restart' => 'dog#restart'

  # page to create a resource
  # update a resource
  # lists some resources
  # shows one resource

  # route for handling create post
  # handling update post
  # handling delete post



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
