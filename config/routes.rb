Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index, :show]
  resources :user_plants, only: [:create, :show, :edit, :update, :destroy]
  resources :user_tasks, only: [:new, :show, :create, :update]

  get 'my_plants', to: 'user_plants#index'
  get 'dashboard', to: 'user_tasks#index'
  get 'add_info', to: 'pages#add_info'
  patch 'add_info', to: 'users#update'
  get 'loader', to: 'pages#loader'
end
