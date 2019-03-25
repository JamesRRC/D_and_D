# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :hire_classes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :accessories
  resources :customers
  resources :hirelings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'accessories#index'
end
