Rails.application.routes.draw do
  root 'home#index'

  namespace :admin do
    resources :users
  end

  get "/signup", to: "users/registrations#new", as: "signup"
  post "/signup", to: "users/registrations#create"
  get "/signin", to: "users/sessions#new", as: "signin"
  post "/signin", to: "users/sessions#create"
  delete "/signout", to: "users/sessions#destroy", as: "signout"
end
