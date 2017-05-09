Rails.application.routes.draw do
  #get 'items/create'

  get 'users/show'

  #get 'users/index'

  get 'home/index'

  devise_for :users
  
  resources :users, only: [:show] do
    resources :items
  end
  
  root to: 'users#show'
end
