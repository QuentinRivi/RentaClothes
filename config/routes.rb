Rails.application.routes.draw do
  devise_for :users
  resources :clothes do
    resources :rentals
  end
  get 'profile', to: 'pages#profile'
  resources :notifications, only: [:index]
  root to: 'clothes#index'
end
