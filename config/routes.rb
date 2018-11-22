Rails.application.routes.draw do
  devise_for :users
  resources :clothes do
    resources :rentals
  end
  get 'profile', to: 'pages#profile'
  resources :notifications, only: [:index]
  root to: 'clothes#index'
  get 'my-clothes', to: 'clothes#index_my_clothes', as: :my_clothes
  put 'clothes/:id/available', to: 'clothes#make_available', as: :available
  put 'clothes/:id/not-available', to: 'clothes#not_available', as: :not_available
end
