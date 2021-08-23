Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :appointments 
  resources :services
  resources :salons
  post "/login", to: "users#login"
  post "/signup", to: "users#create"
  get "/me", to: "users#me"
  get "/users", to: "users#index"
  get '/users/:id', to: "users#show"
  delete '/appointments/:user/:appointment', to: "appointments#destroy"
  post '/rails/active_storage/direct_uploads', to: "direct_uploads#create"
  # get '/rails/active_storage/blobs/:signed_id/*filename(.:format', to: "active_storage/blobs#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
