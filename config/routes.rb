Rails.application.routes.draw do

  devise_for :admins, path_names: {
    sign_in: 'login', sign_out: 'logout',
    registration: 'register'
  }

  devise_for :customers, path_names: {
    sign_in: 'login', sign_out: 'logout',
    registration: 'register'
  }

  unauthenticated do
    root 'home#index', as: :unauthenticated_root
  end

  authenticate :admin do
    resources :products
    resources :customers
    resources :primary_shipping_addresses
    # resources :order_products
    resources :orders

    root 'home#admin', as: :admin_root
  end

  authenticate :customer do

  end
end
