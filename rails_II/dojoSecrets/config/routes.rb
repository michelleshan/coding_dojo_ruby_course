Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/destroy'

  get 'secrets/:id/delete' => 'secrets#destroy', as: 'delete_secret'
  get 'reset' => 'sessions#destroy'
  resources :users
  resources :sessions
  resources :secrets do
    resources :likes
  end
end
