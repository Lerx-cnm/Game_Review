Rails.application.routes.draw do

  root 'game#index'

  resources :games, only: [:show, :index] do
    resources :reviews, except: [:show]
  end
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#delete'
end
