Rails.application.routes.draw do
  resources :manufacturers
  resources :products
  resources :stores
  resources :sellers
  resources :storages

  root "manufacturers#index"
end
