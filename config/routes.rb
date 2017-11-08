Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products', to: 'products#index', as: 'products'
  get 'sale_products', to: 'products#sale_products', as: 'sale_products'
  get 'new_products', to: 'products#new_products', as: 'new_products'
  get 'products/:id', to: 'products#show', as: "product", id: /\d+/
  root to: 'home#index'
end
