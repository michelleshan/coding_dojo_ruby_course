Rails.application.routes.draw do
  get 'messages/index'

  get 'messages/new'

  get 'messages/create'

  get 'messages/show'

  get 'messages/edit'

  get 'messages/update'

  get 'messages/destroy'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  resources :users
  resources :messages
end
