Rails.application.routes.draw do
  get 'users/show'

  #get 'users/index'

  get 'home/index'

  devise_for :users
  
  root to: 'home#index'
end
