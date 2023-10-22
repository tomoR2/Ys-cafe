Rails.application.routes.draw do
  get 'users/index'
  get 'messages/index'

  resources :messages, only: [:index, :create] 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
