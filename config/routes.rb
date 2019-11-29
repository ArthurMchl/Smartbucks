Rails.application.routes.draw do
  root to: 'pages#home'
  get 'profile', to: 'profiles#dashboard'
  # resource :profile, only: [ :show]
  devise_for :users

  resources :orders, only: [:show, :create]  do
    resources :payments, only: :new
  end

  resources :vouchers do
    resources :orders, only: [:new, :create, :show]
    get 'publish', on: :member
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
