Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :order_statuses
  resources :drinks
  resources :carts, only: [:index]

  post '/orders/:id', to: "orders#ordered"
  post '/orders/:id/finished', to: "orders#finished", as: "finished"
  get '/submitted', to: "submitteds#index"

  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  delete '/logout', to: 'logins#destroy'

  get'/bartender', to: 'users#index'
  get'/current_orders', to: 'orders#current_orders'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "logins#new"
end
