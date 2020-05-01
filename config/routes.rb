Rails.application.routes.draw do
  resources :manufacturers
  resources :products
  resources :stores
  resources :sellers
  resources :storages
  resources :commodity_units

  root "manufacturers#index"
end
