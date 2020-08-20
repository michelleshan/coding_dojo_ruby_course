Rails.application.routes.draw do
    # get 'posts/index'

    # get 'posts/show'

    # get 'users/index'

    # get 'users/new'

    resources :users
    resources :posts
end