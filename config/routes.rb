Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index]
  resources :user_plants, only: [:index, :create, :show, :edit, :update, :destroy]
  resources :user_tasks, only: [:index, :show, :create]
end
