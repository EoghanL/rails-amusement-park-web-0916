Rails.application.routes.draw do
  root to: 'application#index'
  resources :users, :attractions, :sessions
  get '/signin', to: 'sessions#signin'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


end
