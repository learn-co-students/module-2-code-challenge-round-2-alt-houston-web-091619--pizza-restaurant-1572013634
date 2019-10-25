Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  resources :restaurants, only: [:index, :show]
  resources :pizzas, only: [:index, :show]
end
