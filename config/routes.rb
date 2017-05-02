Rails.application.routes.draw do
  resources :profile, :only => [:index, :edit]

# point controller for omniauth to devise
  devise_for :users, controllers: { :omniauth_callbacks => "callbacks"}

  resources :houses

  resources :houses do
    resources :reviews, :bookings
  end

  resources :landing, :only => [:index]
  root to: 'landing#index'

# make the index of houses into /discover
end
