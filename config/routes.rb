Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :reviews, only: [:new, :create, :show]
  end

  resources :meals do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:show]

  get '/profile', to: 'users#profile', as: 'profile'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
