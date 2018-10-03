Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :order_statuses
  resources :drinks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "logins#index"
end
