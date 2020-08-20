Rails.application.routes.draw do
  get 'users/index'
  get 'users/show/:id' => 'users#show'
  get 'users/destroy'
  get 'sessions' => 'sessions#new', as: 'login'
  post 'sessions' => 'sessions#create'
  get 'sessions/destroy' => 'sessions#destroy', as: 'logout'

end
