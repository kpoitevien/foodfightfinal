Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  get 'forum/index'
  resources :posts do
    resources :comments
    resources :likes
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'forum/index'
  get 'users/index'
  
  get 'hello_world', to: 'hello_world#index'
  resources :foods
  resources :recipes, only: [:show, :index]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
