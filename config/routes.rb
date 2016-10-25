Rails.application.routes.draw do
  root to: 'application#index'
  resources :users, :attractions
  get '/signin', to: 'users#signin'
  post '/signin', to: 'users#show'

end
