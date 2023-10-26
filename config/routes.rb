Rails.application.routes.draw do
  devise_for :users

  root  'users#index'

  get 'users/index'
  get 'messages/index'
  get 'galleries/index'

  resources :messages, only: [:index, :create] 
  resources :galleries, only: [:index] 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
