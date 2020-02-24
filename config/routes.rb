Rails.application.routes.draw do
  devise_for :users


  resources :meals do
    resources :orders, only: [:create]
  end
  resources :orders, only: [:show]

  get '/profile', to: 'users#profile'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
