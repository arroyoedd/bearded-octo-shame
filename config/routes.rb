SampleApp::Application.routes.draw do
  resources :users
  #we could use the code below or we could use the resources to generate user URIs
  #get "users/new"

  resources :sessions, only: [:new, :create, :destroy]
#:only options restricts said actions

   root to: 'static_pages#home'
   #just routing to home
	match '/help', to: 'static_pages#help'
	match '/contact', to: 'static_pages#contact'
	match '/about', to: 'static_pages#about'
	match '/', to: 'static_pages#home'#root_path and root_url created 
	match '/signup', to: 'users#new'#get "users/new"
	
	match '/signin', to: 'sessions#new'
	
	match '/signout', to: 'sessions#destroy', via: :delete #which indicates that it should be invoked using an HTTP DELETE request
	
	#match arranges both for a valid page at /help and a named route called help_path and it creates help_url => 'http://localhost:3000/help'
	#but the root to page is a little different
	
		
	#the above code does the exact same thing as below
	#except when typing in url of your browser we would just type in 127.0.0.3000/help instead of 127.0.0.3000:static_pages/help 
  
  
  
  
  #get "static_pages/home"

  #get "static_pages/help"
  
  #get "static_pages/about"
  
  #get "static_pages/contact"
  #get is the HTTP request
  #"static_pages/home is the URI

	


  
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end