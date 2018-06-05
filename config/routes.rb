Rails.application.routes.draw do
  get 'home/index'

  root "home#index"
  resources :loans
  resources :books
  resources :users
end
