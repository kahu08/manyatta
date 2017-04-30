Rails.application.routes.draw do
  get 'profile/index'

  get 'profile/edit'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks"}
  resources :bookings
  resources :reviews
  resources :houses

  get 'landing/index'

  root to: 'landing#index'

# make the index of houses into /discover
end
