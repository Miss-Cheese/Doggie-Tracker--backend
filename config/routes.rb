Rails.application.routes.draw do
  resources :walks, only: [:index, :create]
  resources :meals, only: [:index, :create]
  resources :weights, only: [:index, :create]
  resources :dogs, only: [:index, :create]
  resources :users
end
