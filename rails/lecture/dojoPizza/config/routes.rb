Rails.application.routes.draw do
  get 'pizzas/index'

  get 'pizzas/new'

  get 'pizzas/edit'

  get 'pizzas/show'

  root 'pizzas#index'
  
end
