Rails.application.routes.draw do
  devise_for :users
  resources :bookings
  resources :reviews
  resources :houses

  get 'landing/index'

  root to: 'landing#index'

# make the index of houses into /discover
  get 'houses/discover', to: 'houses#discover', as: 'discover'
end
