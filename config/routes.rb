Rails.application.routes.draw do
  resources :manufacturers
  resources :products

  root "manufacturers#index"
end
