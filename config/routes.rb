Rails.application.routes.draw do

  root 'sessions#new'

  resources :games, only: [:show, :index] do
    resources :reviews, except: [:show]
  end
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#delete'
  get '/auth/github/callback', to: 'session#create'
end
