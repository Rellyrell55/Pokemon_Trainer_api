Rails.application.routes.draw do
  resources :joins, only: [:index, :show, :create, :update, :destroy]
  resources :trainers, only: [:index]
  resources :pokemons, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
