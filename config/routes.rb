Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "articles#index"
  #Users routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  resources :articles do
    resources :comments
  end
  #Sessions routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
