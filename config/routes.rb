Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products', to: 'products#index', as: 'products'
  get 'products/:id', to: 'products#show', as: "product", id: /\d+/
  root to: 'home#index'

end
