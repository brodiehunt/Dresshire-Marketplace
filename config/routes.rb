Rails.application.routes.draw do
  get "/listings/dashboard", to: "listings#dashboard", as: "listings_dashboard"
  resources :listings
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  get "/products/search", to: "products#search", as: "search_products"
  resources :products
  root to: "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
