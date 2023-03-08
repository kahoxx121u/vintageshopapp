Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'items#index'

  resources :items do
    scope module: :items do
      resources :add_to_carts, only: [:create]
      resources :delete_in_carts, only: [:create]
    end
  end

  resource :cart, only: [:show ]
  
  resource :charge, only: [:create]


  namespace :admins do
    get 'toppages/index'
    resources :items
  end
end
