Rails.application.routes.draw do
  resources :reviews
  resources :appointments
  resources :users
  resources :services
  resources :salons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
