Rails.application.routes.draw do
  resources :bookings
  resources :reviews
  resources :houses
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
