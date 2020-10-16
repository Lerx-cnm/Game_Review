Rails.application.routes.draw do

  root 'sessions#new'
  resources :user, only: [:show] do
    resources :reviews
  end
  resources :games
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
