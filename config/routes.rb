Rails.application.routes.draw do
  devise_for :users
  resources :clothes do
    ressources :rentals
  end
  root to: 'pages#home'
end
