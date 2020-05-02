Rails.application.routes.draw do
  resources :manufacturers
  resources :products
  resources :stores
  resources :sellers
  resources :storages
  resources :commodity_units
  resources :buyers
  resources :purchases

  root "home#index"
end
