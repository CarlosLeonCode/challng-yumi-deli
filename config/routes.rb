Rails.application.routes.draw do

  devise_for :admins, path_names: {
    sign_in: 'login', sign_out: 'logout'
  }, 
  only: :sessions,
  controllers: {
    sessions: 'devise/admins/sessions'
  }

  devise_for :customers, path_names: {
    sign_in: 'login', sign_out: 'logout',
    registration: 'register'
  }, 
  controllers: {
    sessions: 'devise/customers/sessions',
    registrations: 'devise/customers/registrations'
  }

  authenticated :admin do
    resources :products
    resources :customers
    # resources :primary_shipping_addresses
    # resources :order_products
    resources :orders

    root to: 'home#admin', as: :admin_root
  end

  authenticated :customer do
    root to: 'home#customer', as: :customer_root
  end

  unauthenticated do
    root to: 'home#index', as: :unauthenticated_root
  end
end
