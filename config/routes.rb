Rails.application.routes.draw do
  resources :walks
  resources :meals
  resources :weights
  resources :dogs
  resources :users, only: [:index, :create]
end
