Rails.application.routes.draw do
  devise_for :catchers
  root to: 'pages#home'
  resources :destinations, only: [:index,:show]
  resources :trips, only: [:show, :new, :create, :destroy ]
  resources :catchers, only: [:edit, :index, :show, :update]
end
