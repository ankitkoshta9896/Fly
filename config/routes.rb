Rails.application.routes.draw do
  resources :bookings, except: :edit  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flight, only: :index
  resources :passenger
  # Defines the root path route ("/")
  get 'flights/bookings'
  root "flights#index"
end