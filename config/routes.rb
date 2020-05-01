Rails.application.routes.draw do
  resources :manufacturers
  resources :products
  resources :stores

  root "manufacturers#index"
end
