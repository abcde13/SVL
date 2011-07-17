SVL::Application.routes.draw do
  resources :searches, :only => [:new, :create]
  resources :students
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  match '/log', :to => 'pages#log'

  match '/previous_services', :to => 'pages#previous_services'

  match '/searched', :to => 'pages#searched'

<<<<<<< HEAD
  match '/logged_in', :to => 'searches#new'

  match '/students_new', :to => 'students#new'
  match '/index', :to => 'pages#index'
=======
  match '/logged_in', :to => 'pages#logged_in'
<<<<<<< HEAD
  match '/students_new', :to => 'students#new'
  match '/index', :to => 'pages#index'
=======
  match 'students/new', :to => 'students#new'
>>>>>>> e6dd5c68df98eb651ccb37a7a6f96089bcfd7caf
  match '/signup',  :to => 'users#new'
  match '/signout', :to => 'sessions#destroy'
>>>>>>> upstream/master


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "sessions#new"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
