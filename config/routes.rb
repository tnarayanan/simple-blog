Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'post/create'
  post 'post/store'
  root 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  #get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'view', to: 'post#view', as: 'view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
