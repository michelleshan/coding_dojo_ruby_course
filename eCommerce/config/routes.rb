Rails.application.routes.draw do
  post 'sessions/create' => 'sessions#create', as: 'login'
  get 'sessions/:id/destroy' => 'sessions#destroy', as: 'logout'

  resources :users do
    resources :carts
  end
  resources :products
  # resources :cart_products, only: [:create, :destroy]

  post 'cart_products/:cart_id/:product_id/' => 'cart_products#create', as: 'add_to_cart'
  delete 'cart_products/:id' => 'cart_products#destroy', as: 'remove_from_cart'

  root 'products#index'
end
