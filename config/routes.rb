Rails.application.routes.draw do
  

  
  scope '/api' do
    mount_devise_token_auth_for 'User', at: '/auth'
    resources :groups, except: [:new, :edit]
    resources :comments, except: [:new, :edit]
    resources :games, except: [:new, :edit]
    resources :clan_matches, except: [:new, :edit]
    resources :ladders, except: [:new, :edit]
    resources :clans, except: [:new, :edit]
    resources :consoles, except: [:new, :edit]
    match 'users/the_current_user' => 'users#the_current_user', :via => [:get]
    match 'users/index' => 'users#index', :via => [:get]
    match 'users/who_user' => 'users#who_user', :via => [:post]
    match 'games/get_games' => 'games#get_games', :via => [:post]
    match 'games/get_ladders/:id' => 'games#get_ladders', :via => [:get]
    match 'ladders/get_clans' => 'ladders#get_clans', :via => [:post]
  end

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
