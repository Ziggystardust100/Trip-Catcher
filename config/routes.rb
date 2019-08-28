Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  devise_for :catchers
  root to: 'pages#home'
  resources :destinations, only: [:index,:show]  do
    resources :favourites, only: [:create]
    resources :trips, only: [:create, :new]
  end

  resources :catchers, only: [:edit, :index, :show, :update] do
    resources :friend_requests, only: [:create]
  end

  resources :friend_requests, only: [:index, :update, :destroy]
  resources :stories, only: [:new, :create, :edit, :index, :show, :update, :destroy]
  resources :favourites, only: [:destroy]
  resources :friends, only: [:destroy, :index]
  resources :conversations do
    resources :messages
  end

  resources :trips, only: [:show, :edit, :update, :index, :destroy] do
    resources :invitations, only: [:create]
    resources :tripchats, only: [:create]
  end

  resources :invitations, only: [:destroy, :update]
  resources :tripchats, only: [:destroy]
end
