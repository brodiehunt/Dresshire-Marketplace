Rails.application.routes.draw do
  resources :listings
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  resources :products
  root to: "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
