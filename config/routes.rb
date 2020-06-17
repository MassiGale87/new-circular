Rails.application.routes.draw do

  #mount StripeEvent::Engine, at: '/stripe-webhooks'

  #devise_for :users
  root to: 'pages#home'

  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




  # devise_for :users, path: 'users', controllers: {
  #   sessions: "users/sessions"
  # }
  get "/owners/helped", to: "owners#order_history_owners", as: "owners_helped"
  get "/about", to: "pages#about", as: "about"

  resources :owners, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :owner_offers, shallow: true
  end

  resources :orders, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :order_items, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :payments, only: [:new]
  end



  post "/owners/:owner_id/owner_offers/:id/add", to: "owner_offers#add_to_bag", as: "add_offer_to_bag"
  post "/owners/:owner_id/owner_offers/:id/remove", to: "owner_offers#remove_from_bag", as: "remove_from_bag"
  post "/owners/:owner_id/owner_offers/:id/increase", to: "owner_offers#increase_to_bag", as: "increase_offer_to_bag"
  get "/orders/:owner_id/increase", to: "orders#update_total_amount_cents", as: "update_total_amount_cents"
  get "/orders/:owner_id/decrease", to: "orders#update_total_amount_cents_checkout", as: "update_total_amount_cents_checkout"
  get "/orders/cart", to: "orders#show_cart", as: "show_cart"



  # get "/owners/:user_id/withdraw", to: "owners#withdraw", as: "withdraw"
  # get "/orders/:user_id/transactions", to: "orders#view_history", as: "view_user_history"
  # get "/orders/:user_id/view_all", to: "orders#view_all", as: "view_user_orders"


end
