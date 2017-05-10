Rails.application.routes.draw do
  #get 'items/create'

  get 'users/show'

  #get 'users/index'

  get 'home/index'

  devise_for :users
  
  resources :users do
    resources :items, only: [:create]
  end
  
  resources :items, only: [:destroy]
  
  root to: 'users#show'
end
