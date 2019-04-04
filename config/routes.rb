# frozen_string_literal: true

Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'

  # for STRIPE
  resources :charges

  resources :abouts
  devise_for :users
  resources :orders
  resources :hire_classes
  devise_for :admin_users, ActiveAdmin::Devise.config

  # Cart
  resource :cart, only: [:show]
  resources :order_items, only: %i[create update destroy]

  ActiveAdmin.routes(self)
  resources :accessories
  resources :customers
  resources :hirelings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'search_results', to: 'search#results', as: 'search_results'
  get ':hire_class', to: 'hirelings#hire_class'


  root to: 'accessories#index'
end
