Rails.application.routes.draw do

  resources :post_comments
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/resources', to: 'pages#resources'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  
end
