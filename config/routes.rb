Rails.application.routes.draw do
  root to: 'pages#home'
  get 'profile', to: 'profiles#dashboard'
  # resource :profile, only: [ :show]
  devise_for :users

  resources :vouchers do
    resources :orders, only: [:new, :create, :show]
    get 'publish', on: :member
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
