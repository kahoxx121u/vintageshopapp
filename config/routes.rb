Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'items#index'

  resources :items, only: [:show] do
    scope module: :items do
      resources :add_to_carts, only: [:create]
      resources :delete_in_carts, only: [:create]
    end
  end

  resource :cart, only: [:show] 
  
  resource :charge, only: [:create]


  namespace :admins do
    get 'toppages/index'
    resources :items, only: [:new, :create]
  end
end
