Rails.application.routes.draw do
  devise_for :catchers
  root to: 'pages#home'
  resources :catchers, only: [:edit, :index, :show, :update]
end
