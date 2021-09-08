Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  root "products#index"
  get "/products", to:'products#index'
  post '/add_to_cart/:product_id' => 'products#add_to_cart', :as => 'add_to_cart'
  delete '/remove_from_cart/:product_id', to: 'carts#remove_from_cart', as: 'remove_from_cart'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
