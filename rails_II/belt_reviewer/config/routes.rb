Rails.application.routes.draw do
  get '/events/:event_id/joins' => 'joins#create', as: 'join'
  get '/events/:event_id/cancel' => 'joins#destroy', as: 'cancel'

  post 'sessions/create' => 'sessions#create', as: 'login'
  get 'sessions/:id/destroy' => 'sessions#destroy', as: 'logout'

  get 'events/:id/destroy' => 'events#destroy', as: 'delete_event'

  resources :users
  resources :events do
    resources :comments
  end
end
