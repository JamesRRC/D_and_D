# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/results'
  devise_for :users
  resources :orders
  resources :hire_classes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :accessories
  resources :customers
  resources :hirelings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'search_results', to: 'search#results', as: 'search_results'

  root to: 'accessories#index'
end
