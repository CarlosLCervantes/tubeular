AmateurBangTube::Application.routes.draw do

  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  mount Forem::Engine, :at => '/forums'

  resources :suggestions

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
  get "videos/jwplayer.flash.swf", to: redirect("/assets/jwplayer.flash.swf")
  get "videos/jwplayer.html5.js", to: redirect("/assets/jwplayer.html5.js")
  get "videos/most_viewed", to: "videos#most_viewed", as: :most_viewed_videos
  get "videos/most_favorited", to: "videos#most_favorited", as: :most_favorited_videos
  get "videos/best_rated", to: "videos#best_rated", as: :best_rated_videos
  get "search", to: "videos#search", as: :search
  resources :videos
  get "random", to: "videos#random", as: :random_video
  resources :categories
  get "settings", to: "users#edit", as: :settings
  resource :favorites
  resource :ratings
  get "community", to: "communities#index", as: :community
  get "contact", to: "contact#index", as: :contact
  post "contact", to: "contact#create", as: :create_contact
  resources :suggestions
  get "roullete", to: "roullete#index", as: :roullete
  resources :friends
  #resource :contact

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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
