Rails.application.routes.draw do
  get '/' => 'users#show'
  get '/ns' => 'users#notShow'
  get '/as' => 'users#alsoShow'
end
