Rails.application.routes.draw do
  post 'session/create' => 'session#create', as: 'login'
  get 'session/:id/destroy' => 'session#destroy', as: 'logout'

  get 'main' => 'users#new', as: 'new_user'
  post 'users' => 'users#create', as: 'create_user'
  get 'users/:id' => 'users#show', as: 'user'

  get 'bright_ideas' => 'ideas#index', as: 'dashboard'
  post 'ideas' => 'ideas#create', as: 'create_idea'
  get 'bright_ideas/:id' => 'ideas#show', as: 'idea'
  delete 'ideas/:id' => 'ideas#destroy', as: 'destroy_idea'

  get 'ideas/:idea_id/like/:user_id' => 'likes#create', as: 'like'

  get '*path' => 'users#nothing'

end
