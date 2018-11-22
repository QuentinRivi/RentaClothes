Rails.application.routes.draw do
  devise_for :users
  resources :clothes do
    resources :rentals
  end
  resources :notifications, only: [:index]
  root to: 'clothes#index'
  get 'my-clothes', to: 'clothes#index_my_clothes', as: :my_clothes
end
