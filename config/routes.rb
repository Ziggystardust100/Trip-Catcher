Rails.application.routes.draw do
  devise_for :catchers
  root to: 'pages#home'
  resources :destinations, only: [:index,:show]  do
    resources :favourites, only: [:create]
  end
  resources :trips, only: [:show, :new, :create, :destroy ]
  resources :catchers, only: [:edit, :index, :show, :update]
  resources :stories, only: [:new, :create, :edit, :index, :show, :update, :destroy]
  resources :favourites, only: [:destroy]

end
