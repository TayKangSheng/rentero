Rails.application.routes.draw do

  root 'home#index'

  namespace :admin do
    resources :users
  end

  namespace :users do
    resources :loanables
    get "loaned", to: "loanables#loaned", as: "loaned"
  end

  resources :loanables, only: [:index, :show] do
    resources :loan_contracts, only: [:create], module: :loanables
  end

  resources :bulk_purchases, only: [:index]

  get "/signup",  to: "users/registrations#new", as: "signup"
  post "/signup", to: "users/registrations#create"
  get "/karma",   to: "users/registrations#karma"

  get "/signin",      to: "users/sessions#new", as: "signin"
  post "/signin",     to: "users/sessions#create"
  delete "/signout",  to: "users/sessions#destroy", as: "signout"
end
