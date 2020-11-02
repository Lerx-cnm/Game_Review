Rails.application.routes.draw do

  root 'sessions#new'

  resources :games, only: [:show, :index] do
    resources :reviews, except: [:show]
  end
  resources :users do 
    resources :reviews, only: [:index]
  end
  
  get '/reviews', to: 'reviews#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#delete'
  get '/auth/:google_oauth2/callback', to: 'sessions#google'


end
